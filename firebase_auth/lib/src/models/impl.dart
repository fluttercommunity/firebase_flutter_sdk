// File created by
// Lung Razvan <long1eu>
// on 07/12/2019

part of firebase_auth;

abstract class EmailPasswordAuthCredentialImpl
    with AuthCredential
    implements
        Built<EmailPasswordAuthCredentialImpl, EmailPasswordAuthCredentialImplBuilder>,
        EmailPasswordAuthCredential {
  factory EmailPasswordAuthCredentialImpl() = _$EmailPasswordAuthCredentialImpl;

  EmailPasswordAuthCredentialImpl._();

  @override
  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<EmailPasswordAuthCredentialImpl> get serializer => _$emailPasswordAuthCredentialImplSerializer;
}

abstract class FacebookAuthCredentialImpl
    with AuthCredential
    implements Built<FacebookAuthCredentialImpl, FacebookAuthCredentialImplBuilder>, FacebookAuthCredential {
  factory FacebookAuthCredentialImpl() = _$FacebookAuthCredentialImpl;

  FacebookAuthCredentialImpl._();

  @override
  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<FacebookAuthCredentialImpl> get serializer => _$facebookAuthCredentialImplSerializer;
}

abstract class GameCenterAuthCredentialImpl
    with AuthCredential
    implements Built<GameCenterAuthCredentialImpl, GameCenterAuthCredentialImplBuilder>, GameCenterAuthCredential {
  factory GameCenterAuthCredentialImpl() = _$GameCenterAuthCredentialImpl;

  GameCenterAuthCredentialImpl._();

  @override
  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<GameCenterAuthCredentialImpl> get serializer => _$gameCenterAuthCredentialImplSerializer;
}

abstract class GithubAuthCredentialImpl
    with AuthCredential
    implements Built<GithubAuthCredentialImpl, GithubAuthCredentialImplBuilder>, GithubAuthCredential {
  factory GithubAuthCredentialImpl() = _$GithubAuthCredentialImpl;

  GithubAuthCredentialImpl._();

  @override
  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<GithubAuthCredentialImpl> get serializer => _$githubAuthCredentialImplSerializer;
}

abstract class GoogleAuthCredentialImpl
    with AuthCredential
    implements Built<GoogleAuthCredentialImpl, GoogleAuthCredentialImplBuilder>, GoogleAuthCredential {
  factory GoogleAuthCredentialImpl() = _$GoogleAuthCredentialImpl;

  GoogleAuthCredentialImpl._();

  @override
  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<GoogleAuthCredentialImpl> get serializer => _$googleAuthCredentialImplSerializer;
}

abstract class OAuthCredentialImpl
    with AuthCredential
    implements Built<OAuthCredentialImpl, OAuthCredentialImplBuilder>, OAuthCredential {
  factory OAuthCredentialImpl() = _$OAuthCredentialImpl;

  OAuthCredentialImpl._();

  @override
  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<OAuthCredentialImpl> get serializer => _$oAuthCredentialImplSerializer;
}

abstract class TwitterAuthCredentialImpl
    with AuthCredential
    implements Built<TwitterAuthCredentialImpl, TwitterAuthCredentialImplBuilder>, TwitterAuthCredential {
  factory TwitterAuthCredentialImpl() = _$TwitterAuthCredentialImpl;

  TwitterAuthCredentialImpl._();

  @override
  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<TwitterAuthCredentialImpl> get serializer => _$twitterAuthCredentialImplSerializer;
}

abstract class AdditionalUserInfoImpl
    implements Built<AdditionalUserInfoImpl, AdditionalUserInfoImplBuilder>, AdditionalUserInfo {
  factory AdditionalUserInfoImpl({
    String providerId,
    Map<String, dynamic> profile,
    String username,
    bool isNewUser,
  }) {
    MapBuilder<String, JsonObject> data;
    if (profile != null) {
      data = MapBuilder<String, JsonObject>();
      for (String key in profile.keys) {
        data[key] = JsonObject(profile[key]);
      }
    }

    return _$AdditionalUserInfoImpl((AdditionalUserInfoImplBuilder b) {
      b
        ..providerId = providerId
        ..profile = data
        ..username = username
        ..isNewUser = isNewUser;
    });
  }

  factory AdditionalUserInfoImpl.newAnonymous() {
    return _$AdditionalUserInfoImpl((AdditionalUserInfoImplBuilder b) => b.isNewUser = true);
  }

  factory AdditionalUserInfoImpl.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  AdditionalUserInfoImpl._();

  static Serializer<AdditionalUserInfoImpl> get serializer => _$additionalUserInfoImplSerializer;
}

abstract class UserInfoImpl implements Built<UserInfoImpl, UserInfoImplBuilder>, UserInfo {
  factory UserInfoImpl({
    String uid,
    String providerId,
    String displayName,
    String photoUrl,
    String email,
    String phoneNumber,
    bool isEmailVerified,
  }) {
    return _$UserInfoImpl((UserInfoImplBuilder b) {
      b
        ..uid = uid
        ..providerId = providerId
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..email = email
        ..phoneNumber = phoneNumber
        ..isEmailVerified = isEmailVerified;
    });
  }

  factory UserInfoImpl.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  UserInfoImpl._();

  UserInfoImpl copyWith({
    String uid,
    String providerId,
    String displayName,
    String photoUrl,
    String email,
    String phoneNumber,
    bool isEmailVerified,
  }) {
    return _$UserInfoImpl((UserInfoImplBuilder b) {
      b
        ..uid = uid ?? this.uid
        ..providerId = providerId ?? this.providerId
        ..displayName = displayName ?? this.displayName
        ..photoUrl = photoUrl ?? this.photoUrl
        ..email = email ?? this.email
        ..phoneNumber = phoneNumber ?? this.phoneNumber
        ..isEmailVerified = isEmailVerified ?? this.isEmailVerified;
    });
  }

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<UserInfoImpl> get serializer => _$userInfoImplSerializer;
}

abstract class UserMetadataImpl implements Built<UserMetadataImpl, UserMetadataImplBuilder>, UserMetadata {
  factory UserMetadataImpl({
    @required DateTime lastSignInDate,
    @required DateTime creationDate,
  }) {
    return _$UserMetadataImpl((UserMetadataImplBuilder b) {
      b
        ..lastSignInDate = lastSignInDate
        ..creationDate = creationDate;
    });
  }

  factory UserMetadataImpl.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  UserMetadataImpl._();

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<UserMetadataImpl> get serializer => _$userMetadataImplSerializer;
}

_$FirebaseUserSerializer _$firebaseUserSerializer = _$FirebaseUserSerializer();

class _$FirebaseUserSerializer implements StructuredSerializer<FirebaseUser> {
  @override
  final Iterable<Type> types = const <Type>[FirebaseUser];
  @override
  final String wireName = 'FirebaseUser';

  @override
  Iterable<Object> serialize(Serializers serializers, FirebaseUser object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'isAnonymous',
      serializers.serialize(object.isAnonymous, specifiedType: const FullType(bool)),
      'hasEmailPasswordCredential',
      serializers.serialize(object._hasEmailPasswordCredential, specifiedType: const FullType(bool)),
      'providerData',
      serializers.serialize(BuiltList<UserInfoImpl>(object.providerData),
          specifiedType: const FullType(
            BuiltList,
            <FullType>[FullType(UserInfoImpl)],
          )),
      'email',
      serializers.serialize(object.email, specifiedType: const FullType(String)),
      'phoneNumber',
      serializers.serialize(object.phoneNumber, specifiedType: const FullType(String)),
      'isEmailVerified',
      serializers.serialize(object.isEmailVerified, specifiedType: const FullType(bool)),
      'photoUrl',
      serializers.serialize(object.photoUrl, specifiedType: const FullType(String)),
      'displayName',
      serializers.serialize(object.displayName, specifiedType: const FullType(String)),
      'metadata',
      serializers.serialize(object.metadata, specifiedType: const FullType(UserMetadataImpl)),
      'accessToken',
      serializers.serialize(object._secureTokenApi._accessToken, specifiedType: const FullType(String)),
      'accessTokenExpirationDate',
      serializers.serialize(object._secureTokenApi._accessTokenExpirationDate, specifiedType: const FullType(DateTime)),
      'refreshToken',
      serializers.serialize(object._secureTokenApi._refreshToken, specifiedType: const FullType(String)),
    ];
  }

  @override
  FirebaseUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    String uid;
    bool isAnonymous;
    bool hasEmailPasswordCredential;
    List<UserInfo> providerUserInfo;
    String email;
    String phoneNumber;
    bool isEmailVerified;
    String photoUrl;
    String displayName;
    UserMetadataImpl metadata;
    String accessToken;
    DateTime accessTokenExpirationDate;
    String refreshToken;
    FirebaseAuth auth;

    final Iterator<Object> iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final String key = iterator.current;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uid':
          uid = serializers.deserialize(value, specifiedType: const FullType(String));
          break;
        case 'isAnonymous':
          isAnonymous = serializers.deserialize(value, specifiedType: const FullType(bool));
          break;
        case 'hasEmailPasswordCredential':
          hasEmailPasswordCredential = serializers.deserialize(value, specifiedType: const FullType(bool));
          break;
        case 'providerData':
          final BuiltList<UserInfoImpl> _info = serializers.deserialize(value,
              specifiedType: const FullType(
                BuiltList,
                <FullType>[FullType(UserInfoImpl)],
              ));
          providerUserInfo = _info.toList();
          break;
        case 'email':
          email = serializers.deserialize(value, specifiedType: const FullType(String));
          break;
        case 'phoneNumber':
          phoneNumber = serializers.deserialize(value, specifiedType: const FullType(String));
          break;
        case 'isEmailVerified':
          isEmailVerified = serializers.deserialize(value, specifiedType: const FullType(bool));
          break;
        case 'photoUrl':
          photoUrl = serializers.deserialize(value, specifiedType: const FullType(String));
          break;
        case 'displayName':
          displayName = serializers.deserialize(value, specifiedType: const FullType(String));
          break;
        case 'metadata':
          metadata = serializers.deserialize(value, specifiedType: const FullType(UserMetadataImpl));
          break;
        case 'accessToken':
          accessToken = serializers.deserialize(value, specifiedType: const FullType(String));
          break;
        case 'accessTokenExpirationDate':
          accessTokenExpirationDate = serializers.deserialize(value, specifiedType: const FullType(DateTime));
          break;
        case 'refreshToken':
          refreshToken = serializers.deserialize(value, specifiedType: const FullType(String));
          break;
        case 'auth':
          auth = value;
          break;
      }
    }

    final SecureTokenApi secureTokenApi = SecureTokenApi(
      client: auth._apiKeyClient,
      accessToken: accessToken,
      accessTokenExpirationDate: accessTokenExpirationDate,
      refreshToken: refreshToken,
    );

    return FirebaseUser._(secureTokenApi: secureTokenApi, auth: auth)
      .._isAnonymous = isAnonymous
      .._userInfo = UserInfoImpl(
        uid: uid,
        email: email,
        isEmailVerified: isEmailVerified,
        displayName: displayName,
        photoUrl: photoUrl,
        phoneNumber: phoneNumber,
      )
      ..__hasEmailPasswordCredential = hasEmailPasswordCredential
      .._metadata = metadata
      .._providerData = providerUserInfo;
  }
}

mixin UserInfoMixin implements UserInfo {
  UserInfo _userInfo;

  @override
  String get uid => _userInfo.uid;

  @override
  String get providerId => _userInfo.providerId;

  @override
  String get displayName => _userInfo.displayName;

  @override
  String get photoUrl => _userInfo.photoUrl;

  @override
  String get email => _userInfo.email;

  @override
  String get phoneNumber => _userInfo.phoneNumber;

  @override
  bool get isEmailVerified => _userInfo.isEmailVerified;
}
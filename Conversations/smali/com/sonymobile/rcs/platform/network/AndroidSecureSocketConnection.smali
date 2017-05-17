.class public Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;
.super Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;
.source "AndroidSecureSocketConnection.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mFingerprint:Ljava/lang/String;

.field private mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;-><init>()V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 41
    iput-object v1, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 46
    iput-object v1, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->mFingerprint:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "fingerprint"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;-><init>()V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 41
    iput-object v1, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 46
    iput-object v1, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->mFingerprint:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->mFingerprint:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private declared-synchronized getSslFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 158
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v15, :cond_0

    .line 224
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v15

    .line 160
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v15}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v15

    if-nez v15, :cond_1

    .line 163
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystoreType()Ljava/lang/String;

    move-result-object v7

    .line 164
    .local v7, "keyStoreType":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystorePath()Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "keyStoreFile":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystorePath()Ljava/lang/String;

    move-result-object v14

    .line 166
    .local v14, "trustStoreFile":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystorePassword()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .local v6, "keyStorePassword":[C
    const-string/jumbo v15, "TLS"

    .line 168
    invoke-static {v15}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v12

    .line 173
    .local v12, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 174
    .local v4, "keyStore":Ljava/security/KeyStore;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 175
    .local v3, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v4, v3, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 176
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 178
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "algorithm":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v15}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v15

    if-nez v15, :cond_2

    .line 203
    :goto_2
    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v9

    .line 204
    .local v9, "kmFactory":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v9, v4, v6}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 205
    invoke-virtual {v9}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v10

    .line 209
    .local v10, "kms":[Ljavax/net/ssl/KeyManager;
    new-instance v8, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;

    invoke-direct {v8, v10}, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;-><init>([Ljavax/net/ssl/KeyManager;)V

    .local v8, "km":Ljavax/net/ssl/KeyManager;
    const/4 v15, 0x0

    .line 210
    aput-object v8, v10, v15

    const/4 v15, 0x1

    .line 212
    new-array v13, v15, [Ljavax/net/ssl/TrustManager;

    const/4 v15, 0x0

    new-instance v16, Lcom/sonymobile/rcs/provisioning/https/EasyX509TrustManager;

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lcom/sonymobile/rcs/provisioning/https/EasyX509TrustManager;-><init>(Ljava/security/KeyStore;)V

    aput-object v16, v13, v15

    .line 214
    .local v13, "tms":[Ljavax/net/ssl/TrustManager;
    new-instance v11, Ljava/security/SecureRandom;

    invoke-direct {v11}, Ljava/security/SecureRandom;-><init>()V

    .line 215
    .local v11, "secureRandom":Ljava/security/SecureRandom;
    invoke-virtual {v11}, Ljava/security/SecureRandom;->nextInt()I

    .line 217
    invoke-virtual {v12, v10, v13, v11}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 219
    invoke-virtual {v12}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    .end local v1    # "algorithm":Ljava/lang/String;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "keyStore":Ljava/security/KeyStore;
    .end local v5    # "keyStoreFile":Ljava/lang/String;
    .end local v6    # "keyStorePassword":[C
    .end local v7    # "keyStoreType":Ljava/lang/String;
    .end local v8    # "km":Ljavax/net/ssl/KeyManager;
    .end local v9    # "kmFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local v10    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v11    # "secureRandom":Ljava/security/SecureRandom;
    .end local v12    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v13    # "tms":[Ljavax/net/ssl/TrustManager;
    .end local v14    # "trustStoreFile":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Certificate exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 161
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v16, "Create SSLSocketFactory"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 201
    .restart local v1    # "algorithm":Ljava/lang/String;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "keyStore":Ljava/security/KeyStore;
    .restart local v5    # "keyStoreFile":Ljava/lang/String;
    .restart local v6    # "keyStorePassword":[C
    .restart local v7    # "keyStoreType":Ljava/lang/String;
    .restart local v12    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v14    # "trustStoreFile":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v16, "Use self-signed certificates"

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public getFingerprint(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    const/4 v2, 0x0

    .line 123
    .local v2, "result":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 132
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_4

    .line 145
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 123
    .restart local v2    # "result":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 124
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 125
    .local v0, "certs":[Ljava/security/cert/Certificate;
    iget-object v3, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_3

    .line 128
    :goto_1
    array-length v3, v0

    if-lez v3, :cond_1

    const/4 v3, 0x0

    .line 129
    aget-object v3, v0, v3

    invoke-static {v3, p1}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getCertFingerprint(Ljava/security/cert/Certificate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "result":Ljava/lang/String;
    goto :goto_0

    .line 126
    .local v2, "result":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Remote certificate chain length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 144
    .end local v0    # "certs":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    iget-object v3, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Getting remote certificate fingerprint failed: "

    invoke-virtual {v3, v4, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 133
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    if-eqz p2, :cond_5

    .line 136
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "SSL session is null!"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "SSL socket is null!"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;I)V
    .locals 8
    .param p1, "remoteAddr"    # Ljava/lang/String;
    .param p2, "remotePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 73
    invoke-direct {p0}, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->getSslFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SSLSocket;

    .line 75
    .local v3, "s":Ljavax/net/ssl/SSLSocket;
    :try_start_0
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 76
    iget-object v5, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->mFingerprint:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_1

    .line 111
    .end local v3    # "s":Ljavax/net/ssl/SSLSocket;
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->setSocket(Ljava/net/Socket;)V

    .line 112
    return-void

    .line 80
    .restart local v3    # "s":Ljavax/net/ssl/SSLSocket;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->mFingerprint:Ljava/lang/String;

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "announcedFingerprintElements":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-le v5, v7, :cond_0

    const/4 v5, 0x0

    .line 83
    aget-object v5, v0, v5

    invoke-virtual {p0, v5, v3}, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->getFingerprint(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v4

    .local v4, "usedFingerprint":Ljava/lang/String;
    const/4 v5, 0x1

    .line 85
    aget-object v5, v0, v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 87
    iget-object v5, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-nez v5, :cond_3

    .line 94
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 100
    .local v3, "s":Ljavax/net/ssl/SSLSocket;
    goto :goto_0

    .line 88
    .local v3, "s":Ljavax/net/ssl/SSLSocket;
    :cond_3
    :try_start_3
    iget-object v5, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Wrong fingerprint! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is used while "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is expected!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 110
    .end local v0    # "announcedFingerprintElements":[Ljava/lang/String;
    .end local v3    # "s":Ljavax/net/ssl/SSLSocket;
    .end local v4    # "usedFingerprint":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 106
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_4

    :goto_3
    const/4 v3, 0x0

    .line 109
    .local v3, "s":Ljavax/net/ssl/SSLSocket;
    goto :goto_0

    .line 101
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "announcedFingerprintElements":[Ljava/lang/String;
    .local v3, "s":Ljavax/net/ssl/SSLSocket;
    .restart local v4    # "usedFingerprint":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 96
    .local v1, "ex":Ljava/io/IOException;
    :try_start_4
    iget-object v5, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    iget-object v5, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Closing the socket failed: "

    invoke-virtual {v5, v6, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 101
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    const/4 v3, 0x0

    .line 100
    .local v3, "s":Ljavax/net/ssl/SSLSocket;
    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 107
    .end local v0    # "announcedFingerprintElements":[Ljava/lang/String;
    .end local v3    # "s":Ljavax/net/ssl/SSLSocket;
    .end local v4    # "usedFingerprint":Ljava/lang/String;
    .restart local v2    # "ex":Ljava/lang/Exception;
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "SSL handshake failed! Error: "

    invoke-virtual {v5, v6, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

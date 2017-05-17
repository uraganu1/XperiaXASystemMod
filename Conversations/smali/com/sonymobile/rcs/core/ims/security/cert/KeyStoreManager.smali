.class public Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;
.super Ljava/lang/Object;
.source "KeyStoreManager.java"


# static fields
.field private static fingerprint:Ljava/lang/String;

.field private static lastIpAddress:Ljava/lang/String;

.field private static logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-class v0, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;

    .line 93
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 103
    sput-object v1, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->fingerprint:Ljava/lang/String;

    .line 108
    sput-object v1, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->lastIpAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->createClientCertificate(Ljava/lang/String;)V

    return-void
.end method

.method private static addCertificates(Ljava/lang/String;)V
    .locals 14
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 423
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->loadKeyStoreFromFile()Ljava/security/KeyStore;

    move-result-object v8

    .line 424
    .local v8, "ks":Ljava/security/KeyStore;
    if-eqz v8, :cond_1

    .line 430
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    .local v10, "pathFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, ".crt"

    .line 454
    invoke-virtual {p0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 471
    .end local v8    # "ks":Ljava/security/KeyStore;
    .end local v10    # "pathFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 426
    .restart local v8    # "ks":Ljava/security/KeyStore;
    :cond_1
    return-void

    .line 433
    .restart local v10    # "pathFile":Ljava/io/File;
    :cond_2
    new-instance v11, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager$2;

    invoke-direct {v11}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager$2;-><init>()V

    invoke-virtual {v10, v11}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 439
    .local v2, "certificates":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 440
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v9, :cond_0

    aget-object v5, v0, v6

    .local v5, "file":Ljava/io/File;
    const-string/jumbo v11, "X.509"

    .line 442
    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 443
    .local v3, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 444
    .local v7, "inStream":Ljava/io/InputStream;
    invoke-virtual {v3, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 445
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 446
    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->buildCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 449
    invoke-static {v8}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->saveKeyStoreToFile(Ljava/security/KeyStore;)V

    .line 440
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "certificates":[Ljava/io/File;
    .end local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "i$":I
    .end local v7    # "inStream":Ljava/io/InputStream;
    .end local v9    # "len$":I
    :cond_3
    const-string/jumbo v11, "X.509"

    .line 456
    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 457
    .restart local v3    # "cf":Ljava/security/cert/CertificateFactory;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 458
    .restart local v7    # "inStream":Ljava/io/InputStream;
    invoke-virtual {v3, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 459
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 460
    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->buildCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 463
    invoke-static {v8}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->saveKeyStoreToFile(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v7    # "inStream":Ljava/io/InputStream;
    .end local v8    # "ks":Ljava/security/KeyStore;
    .end local v10    # "pathFile":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 467
    .local v4, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 468
    sget-object v11, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "adding certificate "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static buildCertificateAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const-string/jumbo v0, ""

    .line 481
    .local v0, "alias":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, "filename":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .local v4, "lastModified":J
    const/16 v6, 0x2e

    .line 484
    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 485
    .local v3, "lastDotPosition":I
    if-gtz v3, :cond_0

    .line 488
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    :goto_0
    return-object v0

    .line 486
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static declared-synchronized createClientCertificate(Ljava/lang/String;)V
    .locals 28
    .param p0, "ipAddress"    # Ljava/lang/String;

    .prologue
    const-class v22, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;

    monitor-enter v22

    .line 259
    if-nez p0, :cond_2

    .line 266
    :cond_0
    :try_start_0
    sput-object p0, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->lastIpAddress:Ljava/lang/String;

    .line 269
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->loadKeyStoreFromFile()Ljava/security/KeyStore;

    move-result-object v17

    .line 270
    .local v17, "ks":Ljava/security/KeyStore;
    if-eqz v17, :cond_4

    const/16 v18, 0x0

    .local v18, "privKey":Ljava/security/PrivateKey;
    const/4 v10, 0x0

    .local v10, "pubKey":Ljava/security/PublicKey;
    const-string/jumbo v6, "myJoynCertificate"

    .line 278
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 291
    sget-object v6, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_7

    :goto_0
    const-string/jumbo v6, "RSA"

    .line 295
    invoke-static {v6}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v15

    .line 296
    .local v15, "keyGen":Ljava/security/KeyPairGenerator;
    new-instance v19, Ljava/security/SecureRandom;

    invoke-direct/range {v19 .. v19}, Ljava/security/SecureRandom;-><init>()V

    .local v19, "secureRandom":Ljava/security/SecureRandom;
    const/16 v6, 0x400

    .line 299
    move-object/from16 v0, v19

    invoke-virtual {v15, v6, v0}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 300
    invoke-virtual {v15}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v16

    .line 301
    .local v16, "keypair":Ljava/security/KeyPair;
    invoke-virtual/range {v16 .. v16}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v18

    .line 302
    .local v18, "privKey":Ljava/security/PrivateKey;
    invoke-virtual/range {v16 .. v16}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v10

    .end local v15    # "keyGen":Ljava/security/KeyPairGenerator;
    .end local v16    # "keypair":Ljava/security/KeyPair;
    .end local v19    # "secureRandom":Ljava/security/SecureRandom;
    .local v10, "pubKey":Ljava/security/PublicKey;
    :goto_1
    const/4 v6, 0x1

    .line 306
    new-array v11, v6, [Ljava/security/cert/X509Certificate;

    .line 307
    .local v11, "certChain":[Ljava/security/cert/X509Certificate;
    new-instance v5, Llocal/org/bouncycastle/asn1/x500/X500Name;

    const-string/jumbo v6, "CN=com.sonymobile.rcs.client"

    invoke-direct {v5, v6}, Llocal/org/bouncycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    .line 308
    .local v5, "subjectName":Llocal/org/bouncycastle/asn1/x500/X500Name;
    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    const-wide/32 v26, 0x5265c00

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 310
    .local v7, "startDate":Ljava/util/Date;
    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    const-wide v26, 0x7f4554500L

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 311
    .local v8, "endDate":Ljava/util/Date;
    new-instance v4, Llocal/org/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;

    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    move-object v9, v5

    invoke-direct/range {v4 .. v10}, Llocal/org/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;-><init>(Llocal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Llocal/org/bouncycastle/asn1/x500/X500Name;Ljava/security/PublicKey;)V

    .line 313
    .local v4, "certGen":Llocal/org/bouncycastle/cert/X509v3CertificateBuilder;
    new-instance v21, Llocal/org/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;

    invoke-direct/range {v21 .. v21}, Llocal/org/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;-><init>()V

    .line 314
    .local v21, "x509ExtUtils":Llocal/org/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;
    sget-object v6, Llocal/org/bouncycastle/asn1/x509/X509Extension;->subjectKeyIdentifier:Llocal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Llocal/org/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;->createSubjectKeyIdentifier(Ljava/security/PublicKey;)Llocal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v9

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v6, v0, v9}, Llocal/org/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Llocal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLlocal/org/bouncycastle/asn1/ASN1Encodable;)Llocal/org/bouncycastle/cert/X509v3CertificateBuilder;

    .line 316
    sget-object v6, Llocal/org/bouncycastle/asn1/x509/X509Extension;->authorityKeyIdentifier:Llocal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Llocal/org/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;->createAuthorityKeyIdentifier(Ljava/security/PublicKey;)Llocal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v9

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v6, v0, v9}, Llocal/org/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Llocal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLlocal/org/bouncycastle/asn1/ASN1Encodable;)Llocal/org/bouncycastle/cert/X509v3CertificateBuilder;

    .line 318
    sget-object v6, Llocal/org/bouncycastle/asn1/x509/X509Extension;->keyUsage:Llocal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v9, Llocal/org/bouncycastle/asn1/x509/KeyUsage;

    const/16 v23, 0x84

    move/from16 v0, v23

    invoke-direct {v9, v0}, Llocal/org/bouncycastle/asn1/x509/KeyUsage;-><init>(I)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v6, v0, v9}, Llocal/org/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Llocal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLlocal/org/bouncycastle/asn1/ASN1Encodable;)Llocal/org/bouncycastle/cert/X509v3CertificateBuilder;

    .line 320
    sget-object v6, Llocal/org/bouncycastle/asn1/x509/X509Extension;->extendedKeyUsage:Llocal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v9, Llocal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;

    sget-object v23, Llocal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_clientAuth:Llocal/org/bouncycastle/asn1/x509/KeyPurposeId;

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Llocal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;-><init>(Llocal/org/bouncycastle/asn1/x509/KeyPurposeId;)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v6, v0, v9}, Llocal/org/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Llocal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLlocal/org/bouncycastle/asn1/ASN1Encodable;)Llocal/org/bouncycastle/cert/X509v3CertificateBuilder;

    .line 323
    sget-object v6, Llocal/org/bouncycastle/asn1/x509/X509Extension;->subjectAlternativeName:Llocal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v9, Llocal/org/bouncycastle/asn1/x509/GeneralNames;

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Llocal/org/bouncycastle/asn1/x509/GeneralName;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Llocal/org/bouncycastle/asn1/x509/GeneralName;

    const/16 v26, 0x7

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Llocal/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    aput-object v25, v23, v24

    const/16 v24, 0x1

    new-instance v25, Llocal/org/bouncycastle/asn1/x509/GeneralName;

    const/16 v26, 0x6

    sget-object v27, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v25 .. v27}, Llocal/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Llocal/org/bouncycastle/asn1/x509/GeneralNames;-><init>([Llocal/org/bouncycastle/asn1/x509/GeneralName;)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v6, v0, v9}, Llocal/org/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Llocal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLlocal/org/bouncycastle/asn1/ASN1Encodable;)Llocal/org/bouncycastle/cert/X509v3CertificateBuilder;

    .line 330
    sget-object v6, Llocal/org/bouncycastle/asn1/x509/X509Extension;->basicConstraints:Llocal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v9, Llocal/org/bouncycastle/asn1/x509/BasicConstraints;

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-direct {v9, v0}, Llocal/org/bouncycastle/asn1/x509/BasicConstraints;-><init>(Z)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v6, v0, v9}, Llocal/org/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Llocal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLlocal/org/bouncycastle/asn1/ASN1Encodable;)Llocal/org/bouncycastle/cert/X509v3CertificateBuilder;

    .line 333
    new-instance v6, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;

    invoke-direct {v6}, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;->build(Ljava/security/PrivateKey;)Llocal/org/bouncycastle/operator/ContentSigner;

    move-result-object v20

    .line 335
    .local v20, "sigGen":Llocal/org/bouncycastle/operator/ContentSigner;
    new-instance v12, Llocal/org/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {v12}, Llocal/org/bouncycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    .local v12, "certConv":Llocal/org/bouncycastle/cert/jcajce/JcaX509CertificateConverter;
    const/4 v6, 0x0

    .line 336
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Llocal/org/bouncycastle/cert/X509v3CertificateBuilder;->build(Llocal/org/bouncycastle/operator/ContentSigner;)Llocal/org/bouncycastle/cert/X509CertificateHolder;

    move-result-object v9

    invoke-virtual {v12, v9}, Llocal/org/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Llocal/org/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v9

    aput-object v9, v11, v6

    const/4 v6, 0x0

    .line 339
    aget-object v6, v11, v6

    invoke-static {v6}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->setClientCertificateFingerprint(Ljava/security/cert/Certificate;)V

    const-string/jumbo v6, "myJoynCertificate"

    .line 342
    new-instance v9, Ljava/security/KeyStore$PrivateKeyEntry;

    move-object/from16 v0, v18

    invoke-direct {v9, v0, v11}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    new-instance v23, Ljava/security/KeyStore$PasswordProtection;

    const-string/jumbo v24, "01RCSrcs"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toCharArray()[C

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v6, v9, v1}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 346
    invoke-static/range {v17 .. v17}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->saveKeyStoreToFile(Ljava/security/KeyStore;)V

    .line 348
    sget-object v6, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_8

    .end local v4    # "certGen":Llocal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .end local v5    # "subjectName":Llocal/org/bouncycastle/asn1/x500/X500Name;
    .end local v7    # "startDate":Ljava/util/Date;
    .end local v8    # "endDate":Ljava/util/Date;
    .end local v10    # "pubKey":Ljava/security/PublicKey;
    .end local v11    # "certChain":[Ljava/security/cert/X509Certificate;
    .end local v12    # "certConv":Llocal/org/bouncycastle/cert/jcajce/JcaX509CertificateConverter;
    .end local v17    # "ks":Ljava/security/KeyStore;
    .end local v18    # "privKey":Ljava/security/PrivateKey;
    .end local v20    # "sigGen":Llocal/org/bouncycastle/operator/ContentSigner;
    .end local v21    # "x509ExtUtils":Llocal/org/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;
    :cond_1
    :goto_2
    monitor-exit v22

    .line 364
    return-void

    .line 259
    :cond_2
    :try_start_1
    sget-object v6, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->lastIpAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 260
    sget-object v6, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_3

    :goto_3
    monitor-exit v22

    .line 263
    return-void

    .line 261
    :cond_3
    :try_start_2
    sget-object v6, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "IP address hasn\'t changed. No update needed."

    invoke-virtual {v6, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 363
    :catch_0
    move-exception v14

    .line 360
    .local v14, "ex":Ljava/lang/Exception;
    :try_start_3
    sget-object v6, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 361
    sget-object v6, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Creating client certificate failed: "

    invoke-virtual {v6, v9, v14}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .end local v14    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v22

    throw v6

    .restart local v17    # "ks":Ljava/security/KeyStore;
    :cond_4
    monitor-exit v22

    .line 272
    return-void

    .line 280
    .local v10, "pubKey":Ljava/security/PublicKey;
    .local v18, "privKey":Ljava/security/PrivateKey;
    :cond_5
    :try_start_4
    sget-object v6, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_6

    :goto_4
    const-string/jumbo v6, "myJoynCertificate"

    .line 284
    new-instance v9, Ljava/security/KeyStore$PasswordProtection;

    const-string/jumbo v23, "01RCSrcs"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toCharArray()[C

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v9}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v13

    check-cast v13, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 286
    .local v13, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v13}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v18

    .line 287
    .local v18, "privKey":Ljava/security/PrivateKey;
    invoke-virtual {v13}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    .local v10, "pubKey":Ljava/security/PublicKey;
    const-string/jumbo v6, "myJoynCertificate"

    .line 288
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 281
    .end local v13    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    .local v10, "pubKey":Ljava/security/PublicKey;
    .local v18, "privKey":Ljava/security/PrivateKey;
    :cond_6
    sget-object v6, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "old keypair is recycled"

    invoke-virtual {v6, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 292
    :cond_7
    sget-object v6, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "new keypair is generated"

    invoke-virtual {v6, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 349
    .restart local v4    # "certGen":Llocal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .restart local v5    # "subjectName":Llocal/org/bouncycastle/asn1/x500/X500Name;
    .restart local v7    # "startDate":Ljava/util/Date;
    .restart local v8    # "endDate":Ljava/util/Date;
    .local v10, "pubKey":Ljava/security/PublicKey;
    .restart local v11    # "certChain":[Ljava/security/cert/X509Certificate;
    .restart local v12    # "certConv":Llocal/org/bouncycastle/cert/jcajce/JcaX509CertificateConverter;
    .local v18, "privKey":Ljava/security/PrivateKey;
    .restart local v20    # "sigGen":Llocal/org/bouncycastle/operator/ContentSigner;
    .restart local v21    # "x509ExtUtils":Llocal/org/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;
    :cond_8
    sget-object v6, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Client certificate myJoynCertificate for IP address "

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v23, " with fingerprint "

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getClientCertificateFingerprint()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v23, " added"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method private static createKeyStore()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManagerException;
        }
    .end annotation

    .prologue
    .line 372
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystorePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_1

    .line 376
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystoreType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .local v2, "ks":Ljava/security/KeyStore;
    const-class v4, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;

    .line 377
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v3, "01RCSrcs"

    .line 378
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 379
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    :try_start_2
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->saveKeyStoreToFile(Ljava/security/KeyStore;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 387
    .end local v2    # "ks":Ljava/security/KeyStore;
    :goto_0
    return-void

    .line 373
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 379
    .restart local v2    # "ks":Ljava/security/KeyStore;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 385
    .end local v2    # "ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManagerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getCertFingerprint(Ljava/security/cert/Certificate;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "cert"    # Ljava/security/cert/Certificate;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 501
    if-nez p0, :cond_0

    .line 512
    return-object v7

    .line 502
    :cond_0
    :try_start_0
    sget-object v4, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 506
    :goto_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 507
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 508
    .local v0, "der":[B
    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 509
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 510
    .local v1, "digest":[B
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->hexify([B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 503
    .end local v0    # "der":[B
    .end local v1    # "digest":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :cond_1
    sget-object v4, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Getting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " fingerprint for certificate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    :catch_0
    move-exception v2

    .line 515
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_2

    .line 518
    :goto_1
    return-object v7

    .line 516
    :cond_2
    sget-object v4, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "getCertFingerprint failed: "

    invoke-virtual {v4, v5, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getClientCertificateFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public static getKeystorePassword()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "01RCSrcs"

    .line 165
    return-object v0
.end method

.method public static getKeystorePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "rcs_keystore.jks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKeystoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hexify([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x10

    .line 529
    new-array v1, v3, [C

    const/16 v3, 0x30

    aput-char v3, v1, v4

    const/4 v3, 0x1

    const/16 v4, 0x31

    aput-char v4, v1, v3

    const/4 v3, 0x2

    const/16 v4, 0x32

    aput-char v4, v1, v3

    const/4 v3, 0x3

    const/16 v4, 0x33

    aput-char v4, v1, v3

    const/4 v3, 0x4

    const/16 v4, 0x34

    aput-char v4, v1, v3

    const/4 v3, 0x5

    const/16 v4, 0x35

    aput-char v4, v1, v3

    const/4 v3, 0x6

    const/16 v4, 0x36

    aput-char v4, v1, v3

    const/4 v3, 0x7

    const/16 v4, 0x37

    aput-char v4, v1, v3

    const/16 v3, 0x8

    const/16 v4, 0x38

    aput-char v4, v1, v3

    const/16 v3, 0x9

    const/16 v4, 0x39

    aput-char v4, v1, v3

    const/16 v3, 0xa

    const/16 v4, 0x41

    aput-char v4, v1, v3

    const/16 v3, 0xb

    const/16 v4, 0x42

    aput-char v4, v1, v3

    const/16 v3, 0xc

    const/16 v4, 0x43

    aput-char v4, v1, v3

    const/16 v3, 0xd

    const/16 v4, 0x44

    aput-char v4, v1, v3

    const/16 v3, 0xe

    const/16 v4, 0x45

    aput-char v4, v1, v3

    const/16 v3, 0xf

    const/16 v4, 0x46

    aput-char v4, v1, v3

    .line 532
    .local v1, "hexDigits":[C
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 533
    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_0

    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 534
    :cond_0
    if-nez v2, :cond_1

    .line 537
    :goto_1
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 538
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, ":"

    .line 535
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static isCertificateEntry(Ljava/lang/String;)Z
    .locals 6
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 396
    const/4 v2, 0x0

    .line 399
    .local v2, "result":Z
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->loadKeyStoreFromFile()Ljava/security/KeyStore;

    move-result-object v1

    .line 400
    .local v1, "ks":Ljava/security/KeyStore;
    if-eqz v1, :cond_1

    .line 405
    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "result":Z
    const/4 v1, 0x0

    .line 412
    .end local v1    # "ks":Ljava/security/KeyStore;
    .end local v2    # "result":Z
    :cond_0
    :goto_0
    return v2

    .line 402
    .restart local v1    # "ks":Ljava/security/KeyStore;
    .local v2, "result":Z
    :cond_1
    return v3

    .line 411
    .end local v1    # "ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 408
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    sget-object v3, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Checking key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static isKeystoreExists()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystorePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_1

    :cond_0
    return v3

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->loadKeyStoreFromFile()Ljava/security/KeyStore;

    move-result-object v1

    .line 208
    .local v1, "ks":Ljava/security/KeyStore;
    if-nez v1, :cond_2

    .line 212
    return v3

    :cond_2
    const/4 v1, 0x0

    .line 210
    .local v1, "ks":Ljava/security/KeyStore;
    const/4 v2, 0x1

    return v2
.end method

.method public static isOwnCertificateUsed()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 551
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getTlsCertificateRoot()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "certRoot":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 555
    :cond_0
    return v3

    .line 552
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 553
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->buildCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->isCertificateEntry(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 555
    :catch_0
    move-exception v1

    .line 558
    .local v1, "e":Ljava/lang/Exception;
    return v3
.end method

.method public static loadKeyStore()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManagerException;
        }
    .end annotation

    .prologue
    .line 117
    sget-object v7, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_3

    .line 128
    .local v3, "currentProviders":[Ljava/security/Provider;
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->isKeystoreExists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 136
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getTlsCertificateRoot()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "certRoot":Ljava/lang/String;
    if-nez v2, :cond_6

    .line 142
    :cond_1
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getTlsCertificateIntermediate()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "certIntermediate":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 148
    :cond_2
    :goto_2
    return-void

    .line 118
    .end local v1    # "certIntermediate":Ljava/lang/String;
    .end local v2    # "certRoot":Ljava/lang/String;
    .end local v3    # "currentProviders":[Ljava/security/Provider;
    :cond_3
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    .line 119
    .restart local v3    # "currentProviders":[Ljava/security/Provider;
    array-length v7, v3

    if-lez v7, :cond_0

    .line 120
    move-object v0, v3

    .local v0, "arr$":[Ljava/security/Provider;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_3
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 121
    .local v6, "provider":Ljava/security/Provider;
    sget-object v7, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Registered provider: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "; info: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/security/Provider;->getInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 129
    .end local v0    # "arr$":[Ljava/security/Provider;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "provider":Ljava/security/Provider;
    :cond_4
    sget-object v7, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_5

    .line 132
    :goto_4
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->createKeyStore()V

    goto :goto_0

    .line 130
    :cond_5
    sget-object v7, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Create new keystore file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystorePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 137
    .restart local v2    # "certRoot":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 138
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->buildCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 139
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->addCertificates(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 143
    .restart local v1    # "certIntermediate":Ljava/lang/String;
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 144
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->buildCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 145
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->addCertificates(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static loadKeyStoreFromFile()Ljava/security/KeyStore;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .local v6, "ks":Ljava/security/KeyStore;
    const/4 v2, 0x0

    .line 573
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystorePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 574
    .end local v2    # "file":Ljava/io/File;
    .local v3, "file":Ljava/io/File;
    if-nez v3, :cond_1

    .line 595
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "ks":Ljava/security/KeyStore;
    :cond_0
    :goto_0
    if-nez v4, :cond_3

    .line 600
    :goto_1
    return-object v6

    .line 574
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "ks":Ljava/security/KeyStore;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 575
    new-instance v5, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystorePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 578
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystoreType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .local v6, "ks":Ljava/security/KeyStore;
    const-class v8, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;

    .line 579
    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    const-string/jumbo v7, "01RCSrcs"

    .line 580
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 581
    monitor-exit v8

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 599
    :catch_0
    move-exception v1

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    move-object v4, v5

    .line 584
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "ks":Ljava/security/KeyStore;
    .local v1, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    sget-object v7, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v7

    if-nez v7, :cond_4

    .line 588
    :goto_3
    if-nez v2, :cond_5

    .line 595
    :cond_2
    :goto_4
    if-nez v4, :cond_6

    .line 598
    :goto_5
    return-object v10

    .line 596
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    :cond_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 598
    :catch_1
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 585
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    :try_start_7
    sget-object v7, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Loading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystorePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " of type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystoreType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 598
    :catchall_1
    move-exception v7

    .line 595
    :goto_6
    if-nez v4, :cond_7

    .line 598
    :goto_7
    throw v7

    .line 588
    :cond_5
    :try_start_8
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 590
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 596
    :cond_6
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    .line 598
    :catch_2
    move-exception v7

    goto :goto_5

    .line 596
    :cond_7
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_7

    .line 598
    :catch_3
    move-exception v8

    goto :goto_7

    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    .local v4, "fis":Ljava/io/FileInputStream;
    .local v6, "ks":Ljava/security/KeyStore;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_6

    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "ks":Ljava/security/KeyStore;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v7

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "ks":Ljava/security/KeyStore;
    :catchall_4
    move-exception v7

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-exception v7

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 599
    .local v2, "file":Ljava/io/File;
    .local v4, "fis":Ljava/io/FileInputStream;
    .local v6, "ks":Ljava/security/KeyStore;
    :catch_4
    move-exception v1

    goto :goto_2

    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    goto :goto_2

    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "ks":Ljava/security/KeyStore;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "ks":Ljava/security/KeyStore;
    move-exception v1

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static saveKeyStoreToFile(Ljava/security/KeyStore;)V
    .locals 7
    .param p0, "ks"    # Ljava/security/KeyStore;

    .prologue
    .line 607
    if-eqz p0, :cond_1

    const/4 v2, 0x0

    .line 613
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystorePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    const-class v5, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;

    .line 616
    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string/jumbo v4, "01RCSrcs"

    .line 617
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 618
    monitor-exit v5

    .line 626
    if-nez v3, :cond_2

    :goto_0
    move-object v2, v3

    .line 631
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 608
    :cond_1
    return-void

    .line 618
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 630
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 620
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v1, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    sget-object v4, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v4

    if-nez v4, :cond_3

    .line 626
    :goto_3
    if-eqz v2, :cond_0

    .line 627
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 629
    :catch_1
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 627
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 629
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .line 630
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 621
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_7
    sget-object v4, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Saving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystorePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystoreType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 630
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    .line 626
    :goto_4
    if-nez v2, :cond_4

    .line 629
    :goto_5
    throw v4

    .line 627
    :cond_4
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    .line 629
    :catch_3
    move-exception v5

    goto :goto_5

    .line 630
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .local v2, "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    goto :goto_2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    move-exception v1

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static setClientCertificateFingerprint(Ljava/security/cert/Certificate;)V
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const-string/jumbo v0, "SHA-1"

    .line 193
    invoke-static {p0, v0}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getCertFingerprint(Ljava/security/cert/Certificate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->fingerprint:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public static updateClientCertificate(Ljava/lang/String;)V
    .locals 5
    .param p0, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 225
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->isKeystoreExists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    sget-object v2, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_3

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    sget-object v2, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 232
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager$1;-><init>(Ljava/lang/String;)V

    .line 241
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    .end local v1    # "t":Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    sget-object v2, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Updating client certificate while checking keystore failed: "

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 227
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Update client certificate"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 244
    :cond_3
    sget-object v2, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Client certificate not created as keystore file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystorePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

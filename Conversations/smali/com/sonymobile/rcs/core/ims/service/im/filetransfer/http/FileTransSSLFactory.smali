.class public Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransSSLFactory;
.super Ljava/lang/Object;
.source "FileTransSSLFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransSSLFactory$AllTrustManager;
    }
.end annotation


# static fields
.field private static sslcontext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    sput-object v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransSSLFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    :try_start_0
    const-string/jumbo v1, "TLS"

    .line 25
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransSSLFactory;->sslcontext:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-void

    .line 28
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_0
    move-exception v0

    .line 27
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    sput-object v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransSSLFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static getFileTransferSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 40
    :try_start_0
    sget-object v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransSSLFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransSSLFactory$AllTrustManager;

    invoke-direct {v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransSSLFactory$AllTrustManager;-><init>()V

    aput-object v5, v3, v4

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    sget-object v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransSSLFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    return-object v2

    .line 47
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/security/KeyManagementException;
    return-object v6

    .end local v1    # "e":Ljava/security/KeyManagementException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/NullPointerException;
    return-object v6
.end method

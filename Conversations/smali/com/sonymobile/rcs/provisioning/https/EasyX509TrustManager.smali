.class public Lcom/sonymobile/rcs/provisioning/https/EasyX509TrustManager;
.super Ljava/lang/Object;
.source "EasyX509TrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private standardTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 4
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 39
    iput-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/EasyX509TrustManager;->standardTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 47
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 49
    .local v0, "factory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 50
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 51
    .local v1, "trustmanagers":[Ljavax/net/ssl/TrustManager;
    array-length v2, v1

    if-eqz v2, :cond_0

    .line 54
    aget-object v2, v1, v3

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    iput-object v2, p0, Lcom/sonymobile/rcs/provisioning/https/EasyX509TrustManager;->standardTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 55
    return-void

    .line 52
    :cond_0
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v3, "no trust manager found"

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/EasyX509TrustManager;->standardTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 74
    if-nez p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 75
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    goto :goto_0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/EasyX509TrustManager;->standardTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

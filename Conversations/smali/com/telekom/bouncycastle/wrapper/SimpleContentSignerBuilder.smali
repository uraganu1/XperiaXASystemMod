.class public Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;
.super Ljava/lang/Object;
.source "SimpleContentSignerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$SignatureOutputStream;
    }
.end annotation


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private sigAlgId:Llocal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "SHA1withRSA"

    .line 26
    iput-object v0, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;->mAlgorithm:Ljava/lang/String;

    .line 31
    new-instance v0, Llocal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v0}, Llocal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    iget-object v1, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llocal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Llocal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;->sigAlgId:Llocal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;)Llocal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1
    .param p0, "x0"    # Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;->sigAlgId:Llocal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method


# virtual methods
.method public build(Ljava/security/PrivateKey;)Llocal/org/bouncycastle/operator/ContentSigner;
    .locals 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llocal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .prologue
    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;->mAlgorithm:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 38
    .local v1, "sig":Ljava/security/Signature;
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 40
    new-instance v2, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$1;

    invoke-direct {v2, p0, v1}, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$1;-><init>(Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;Ljava/security/Signature;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .end local v1    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Llocal/org/bouncycastle/operator/OperatorCreationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cannot create signer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Llocal/org/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

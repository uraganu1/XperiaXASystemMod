.class Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$1;
.super Ljava/lang/Object;
.source "SimpleContentSignerBuilder.java"

# interfaces
.implements Llocal/org/bouncycastle/operator/ContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;->build(Ljava/security/PrivateKey;)Llocal/org/bouncycastle/operator/ContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private stream:Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$SignatureOutputStream;

.field final synthetic this$0:Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;

.field final synthetic val$sig:Ljava/security/Signature;


# direct methods
.method constructor <init>(Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;Ljava/security/Signature;)V
    .locals 3

    .prologue
    .line 40
    iput-object p1, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$1;->this$0:Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;

    iput-object p2, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$1;->val$sig:Ljava/security/Signature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$SignatureOutputStream;

    iget-object v1, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$1;->this$0:Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;

    iget-object v2, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$1;->val$sig:Ljava/security/Signature;

    invoke-direct {v0, v1, v2}, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$SignatureOutputStream;-><init>(Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;Ljava/security/Signature;)V

    iput-object v0, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$1;->stream:Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$SignatureOutputStream;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Llocal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$1;->this$0:Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;

    # getter for: Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;->sigAlgId:Llocal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-static {v0}, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;->access$000(Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;)Llocal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$1;->stream:Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$SignatureOutputStream;

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$1;->stream:Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$SignatureOutputStream;

    invoke-virtual {v1}, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$SignatureOutputStream;->getSignature()[B
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v1, Llocal/org/bouncycastle/operator/RuntimeOperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception obtaining signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Llocal/org/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

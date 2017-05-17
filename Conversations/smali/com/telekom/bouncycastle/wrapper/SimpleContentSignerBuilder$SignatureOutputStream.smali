.class Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$SignatureOutputStream;
.super Ljava/io/OutputStream;
.source "SimpleContentSignerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignatureOutputStream"
.end annotation


# instance fields
.field private sig:Ljava/security/Signature;

.field final synthetic this$0:Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;


# direct methods
.method constructor <init>(Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;Ljava/security/Signature;)V
    .locals 0
    .param p2, "sig"    # Ljava/security/Signature;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$SignatureOutputStream;->this$0:Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$SignatureOutputStream;->sig:Ljava/security/Signature;

    .line 70
    return-void
.end method


# virtual methods
.method getSignature()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$SignatureOutputStream;->sig:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$SignatureOutputStream;->sig:Ljava/security/Signature;

    int-to-byte v2, p1

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update(B)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v1, Llocal/org/bouncycastle/operator/OperatorStreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception in content signer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Llocal/org/bouncycastle/operator/OperatorStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write([B)V
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$SignatureOutputStream;->sig:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v1, Llocal/org/bouncycastle/operator/OperatorStreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception in content signer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Llocal/org/bouncycastle/operator/OperatorStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write([BII)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/telekom/bouncycastle/wrapper/SimpleContentSignerBuilder$SignatureOutputStream;->sig:Ljava/security/Signature;

    invoke-virtual {v1, p1, p2, p3}, Ljava/security/Signature;->update([BII)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v1, Llocal/org/bouncycastle/operator/OperatorStreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception in content signer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Llocal/org/bouncycastle/operator/OperatorStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

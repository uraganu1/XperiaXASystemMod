.class Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager$1;
.super Ljava/lang/Thread;
.source "KeyStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->updateClientCertificate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ipAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager$1;->val$ipAddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager$1;->val$ipAddress:Ljava/lang/String;

    # invokes: Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->createClientCertificate(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->access$000(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.class Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;
.super Ljava/lang/Object;
.source "RealPinAutoConfirmHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->onUnlockFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;

.field final synthetic val$previousTimeout:J


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;
    .param p2, "val$previousTimeout"    # J

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;->this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;

    iput-wide p2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;->val$previousTimeout:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;->this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;

    invoke-static {v0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->-get1(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->isContentLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;->this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;

    invoke-static {v0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->-get1(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setContentLocked(Z)V

    .line 239
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;->this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;

    invoke-static {v0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->-get1(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->reset(Z)V

    .line 240
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;->this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;

    invoke-static {v0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->-get2(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;->val$previousTimeout:J

    long-to-int v1, v2

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 236
    :cond_0
    return-void
.end method

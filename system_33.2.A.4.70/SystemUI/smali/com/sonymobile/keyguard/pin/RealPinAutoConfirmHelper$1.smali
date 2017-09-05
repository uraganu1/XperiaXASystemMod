.class Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$1;
.super Ljava/lang/Object;
.source "RealPinAutoConfirmHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->onPasswordLengthIncreased(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$1;->this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$1;->this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;

    invoke-static {v0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->-get1(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setContentLocked(Z)V

    .line 203
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$1;->this$0:Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;

    invoke-static {v0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->-get0(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 201
    return-void
.end method

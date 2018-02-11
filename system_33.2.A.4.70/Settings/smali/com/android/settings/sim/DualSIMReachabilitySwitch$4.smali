.class Lcom/android/settings/sim/DualSIMReachabilitySwitch$4;
.super Ljava/lang/Object;
.source "DualSIMReachabilitySwitch.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/DualSIMReachabilitySwitch;->initEditTextStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$4;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 328
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$4;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-static {v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-get2(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$4;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-static {v3}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-get4(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)[Landroid/widget/EditText;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$4;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-static {v3}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-get4(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)[Landroid/widget/EditText;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 327
    return-void

    :cond_1
    move v0, v1

    .line 329
    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 332
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 335
    return-void
.end method

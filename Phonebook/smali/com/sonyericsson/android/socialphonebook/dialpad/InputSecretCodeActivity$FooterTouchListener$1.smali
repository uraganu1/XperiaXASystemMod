.class Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener$1;
.super Ljava/lang/Object;
.source "InputSecretCodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;
    .param p2, "val$button"    # Landroid/widget/Button;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener$1;->this$1:Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener$1;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener$1;->val$button:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener$1;->this$1:Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;->-set0(Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;Z)Z

    .line 97
    return-void
.end method

.class final Lcom/mediatek/settings/inputmethod/InputMethodExts$3;
.super Ljava/lang/Object;
.source "InputMethodExts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/inputmethod/InputMethodExts;->displayVoiceWakeupAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$negativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "val$negativeOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts$3;->val$negativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts$3;->val$negativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 206
    const/4 v1, -0x2

    .line 205
    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 204
    return-void
.end method

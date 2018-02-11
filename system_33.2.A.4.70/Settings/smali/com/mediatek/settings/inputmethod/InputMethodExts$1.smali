.class final Lcom/mediatek/settings/inputmethod/InputMethodExts$1;
.super Ljava/lang/Object;
.source "InputMethodExts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/inputmethod/InputMethodExts;->displayVoiceWakeupAlert(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$packageName"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts$1;->val$packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/settings/inputmethod/InputMethodExts;->-wrap0(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 177
    const-string/jumbo v1, "Voice Wakeup Enable Confirm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts$1;->val$context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 174
    return-void
.end method

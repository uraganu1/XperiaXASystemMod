.class Lcom/sonyericsson/conversations/ui/MessageItemMmsView$OnDraftShortClickListener;
.super Ljava/lang/Object;
.source "MessageItemMmsView.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageItemMmsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDraftShortClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageItemMmsView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/MessageItemMmsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageItemMmsView;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemMmsView$OnDraftShortClickListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageItemMmsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/MessageItemMmsView;Lcom/sonyericsson/conversations/ui/MessageItemMmsView$OnDraftShortClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageItemMmsView;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView$OnDraftShortClickListener;-><init>(Lcom/sonyericsson/conversations/ui/MessageItemMmsView;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "objectUri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 171
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageItemMmsView$OnDraftShortClickListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageItemMmsView;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    .local v0, "context":Landroid/content/Context;
    invoke-static {p3}, Lcom/sonyericsson/conversations/util/VCardUtil;->isVCardMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0, p2}, Lcom/sonyericsson/conversations/util/VCardUtil;->isVCardLocationObject(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    invoke-static {v0, p2}, Lcom/sonyericsson/conversations/ui/dialog/LocationVCardDialog;->showLocationDialog(Landroid/content/Context;Landroid/net/Uri;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v3, "i":Landroid/content/Intent;
    invoke-virtual {v3, p2, p3}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const v4, 0x7f0b00a6

    .line 182
    invoke-static {v0, v4, v5}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 185
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/SecurityException;
    const v4, 0x7f0b00a7

    .line 186
    invoke-static {v0, v4, v5}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 189
    sget-boolean v4, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not access URI:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouchDown()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onTouchUp()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

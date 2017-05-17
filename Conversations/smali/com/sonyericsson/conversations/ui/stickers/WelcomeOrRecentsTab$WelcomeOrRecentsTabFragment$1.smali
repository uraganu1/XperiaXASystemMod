.class Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment$1;
.super Ljava/lang/Object;
.source "WelcomeOrRecentsTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;->initWelcomeView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment$1;->this$1:Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 115
    const-string/jumbo v0, "message_list"

    .line 116
    const-string/jumbo v1, "attachment_selected"

    .line 118
    sget-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->STICKER_STORE_BANNER:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 116
    invoke-static {v2}, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->getAttachmentSelectedLabel(Lcom/sonyericsson/conversations/ui/AddMediaType;)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {v0, v1, v2}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment$1;->this$1:Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;->-get0(Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeOrRecentsTabFragment;)Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/stickers/WelcomeOrRecentsTab$WelcomeTabCallback;->sketchStoreBubbleClicked()V

    .line 114
    return-void
.end method

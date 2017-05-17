.class Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;
.super Ljava/lang/Object;
.source "LocalTextInputInfoBoxHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->updateTextInputInfoBoxes(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setInfoStringToView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "stringKey"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "infoString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setMessageIndicatorInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 100
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    .line 101
    const-string/jumbo v5, "message_type_info"

    .line 100
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "messageTypeText":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, "messageIndicatorBuilder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    .line 104
    const-string/jumbo v5, "primary_info"

    .line 103
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "primaryInfo":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    .line 106
    const-string/jumbo v5, "secondary_info"

    .line 105
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "secondaryInfo":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get0(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 111
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 116
    const-string/jumbo v4, " / "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 121
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get3(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 127
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get2(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :cond_4
    :goto_1
    return-void

    .line 108
    :cond_5
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get2(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get2(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 123
    :cond_6
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get3(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get3(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_7
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get2(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get2(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 133
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get2(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setResizeProgressInfo()V
    .locals 6

    .prologue
    .line 141
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    .line 142
    const-string/jumbo v4, "resize_info_txt"

    .line 141
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "infoString":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    .line 144
    const-string/jumbo v4, "resize_info_uri"

    .line 143
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "videoStr":Ljava/lang/String;
    sget-boolean v3, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "progressInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "videoUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 151
    :cond_0
    if-eqz v1, :cond_1

    .line 152
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 157
    .local v2, "videoUri":Landroid/net/Uri;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get6(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :goto_1
    return-void

    .line 154
    .end local v2    # "videoUri":Landroid/net/Uri;
    :cond_1
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .restart local v2    # "videoUri":Landroid/net/Uri;
    goto :goto_0

    .line 160
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get6(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get1(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    move-result-object v4

    invoke-static {}, Lcom/sonyericsson/conversations/model/Participant;->getMySelfParticipant()Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v3

    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sonymobile/forklift/HeavyProperty;->loadSyncWith(Lcom/sonymobile/forklift/Forklift;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v4, v3}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;)V

    .line 167
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get5(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 168
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get5(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get4(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/util/ImageHandler;->loadVideoThumbnailUseLoading(Landroid/net/Uri;Landroid/widget/ImageView;)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->updateTextInputCommandArgs()Z

    move-result v0

    .line 85
    .local v0, "changed":Z
    if-nez v0, :cond_0

    .line 86
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get7(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "typing_info"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->setInfoStringToView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->setMessageIndicatorInfo()V

    .line 91
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->setResizeProgressInfo()V

    .line 93
    sget-boolean v1, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "typingInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get7(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "messageIndicatorInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->-get2(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 83
    :cond_1
    return-void
.end method

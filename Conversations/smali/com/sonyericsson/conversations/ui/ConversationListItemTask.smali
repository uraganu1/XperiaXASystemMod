.class public Lcom/sonyericsson/conversations/ui/ConversationListItemTask;
.super Landroid/os/AsyncTask;
.source "ConversationListItemTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAttachmentSummary:Lcom/sonyericsson/conversations/model/AttachmentSummary;

.field private final mContext:Landroid/content/Context;

.field private final mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private mConversationProperties:Lcom/sonyericsson/conversations/conversation/ConversationProperties;

.field private mDateFormatter:Lcom/sonyericsson/conversations/ui/util/DateFormatter;

.field private mDateString:Ljava/lang/String;

.field private mFormattedSnippet:Ljava/lang/CharSequence;

.field private final mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

.field private mMessageExists:Z

.field mResources:Landroid/content/res/Resources;

.field private final mSnippet:Ljava/lang/String;

.field private final mSnippetCharset:I

.field private final mSnippetType:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/ui/ConversationListItemView;Ljava/lang/String;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "listItemView"    # Lcom/sonyericsson/conversations/ui/ConversationListItemView;
    .param p4, "snippet"    # Ljava/lang/String;
    .param p5, "snippetCharset"    # I
    .param p6, "snippetType"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 87
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    .line 88
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mSnippet:Ljava/lang/String;

    .line 89
    iput p5, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mSnippetCharset:I

    .line 90
    iput p6, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mSnippetType:I

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mResources:Landroid/content/res/Resources;

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mDateFormatter:Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    .line 84
    return-void
.end method

.method private getConversationSnippet(Lcom/sonyericsson/conversations/model/AttachmentSummary;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "attachmentSummary"    # Lcom/sonyericsson/conversations/model/AttachmentSummary;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 178
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 179
    .local v2, "snippetBuilder":Landroid/text/SpannableStringBuilder;
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mSnippetType:I

    if-ne v4, v6, :cond_4

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->shouldUseMePrefix()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 181
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0175

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 183
    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 196
    .end local v3    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mSnippet:Ljava/lang/String;

    iget v5, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mSnippetCharset:I

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/util/TextUtil;->decodeRawString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "msgSnippet":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 200
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->getSenderString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->getAttachedBodyText()Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->getSnippetForEmptyMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_2
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 211
    .local v1, "prefixLength":I
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 212
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mSnippetType:I

    if-ne v4, v7, :cond_3

    .line 214
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 215
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    .line 214
    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 217
    :cond_3
    return-object v2

    .line 184
    .end local v0    # "msgSnippet":Ljava/lang/String;
    .end local v1    # "prefixLength":I
    :cond_4
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mSnippetType:I

    if-ne v4, v7, :cond_0

    .line 186
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mResources:Landroid/content/res/Resources;

    .line 187
    const v5, 0x7f0b00c9

    .line 186
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    .restart local v3    # "text":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 189
    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private shouldUseMePrefix()Z
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    .line 174
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    .line 173
    if-ne v0, v1, :cond_0

    .line 174
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mMessageExists:Z

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateAttachmentSummaryViews(Lcom/sonyericsson/conversations/model/AttachmentSummary;)V
    .locals 6
    .param p1, "attachmentSummary"    # Lcom/sonyericsson/conversations/model/AttachmentSummary;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 151
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->hasAttachment()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getAttachmentView()Landroid/widget/ImageView;

    move-result-object v1

    .line 153
    .local v1, "attachmentView":Landroid/widget/ImageView;
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->getInboxIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 156
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getAttachmentCounterView()Landroid/widget/TextView;

    move-result-object v0

    .line 157
    .local v0, "attachmentCounterView":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->getNumberOfAttachments()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 158
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->getNumberOfAttachments()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .end local v0    # "attachmentCounterView":Landroid/widget/TextView;
    .end local v1    # "attachmentView":Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 162
    .restart local v0    # "attachmentCounterView":Landroid/widget/TextView;
    .restart local v1    # "attachmentView":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 165
    .end local v0    # "attachmentCounterView":Landroid/widget/TextView;
    .end local v1    # "attachmentView":Landroid/widget/ImageView;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getAttachmentView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getAttachmentCounterView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMuteStatus(Lcom/sonyericsson/conversations/conversation/ConversationProperties;)V
    .locals 2
    .param p1, "conversationProperties"    # Lcom/sonyericsson/conversations/conversation/ConversationProperties;

    .prologue
    .line 143
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/ConversationProperties;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getMuteIndicator()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getMuteIndicator()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 109
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "message":Lcom/sonyericsson/conversations/model/Message;
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mSnippetType:I

    const/4 v3, 0x3

    if-eq v3, v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/model/MessageUtil;->getNewestMessageInThread(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    .line 114
    .end local v1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    if-eqz v1, :cond_2

    .line 115
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mMessageExists:Z

    .line 116
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/model/Message;->getAttachmentType(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/AttachmentSummary;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mAttachmentSummary:Lcom/sonyericsson/conversations/model/AttachmentSummary;

    .line 117
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mDateFormatter:Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    iget-wide v4, v1, Lcom/sonyericsson/conversations/model/Message;->date:J

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->formatConversationListDate(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mDateString:Ljava/lang/String;

    .line 121
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mAttachmentSummary:Lcom/sonyericsson/conversations/model/AttachmentSummary;

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->getConversationSnippet(Lcom/sonyericsson/conversations/model/AttachmentSummary;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mFormattedSnippet:Ljava/lang/CharSequence;

    .line 123
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v0

    .line 124
    .local v0, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mAttachmentSummary:Lcom/sonyericsson/conversations/model/AttachmentSummary;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->putAttachmentSummaryToCache(Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/AttachmentSummary;)V

    .line 125
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v2, v3, :cond_1

    .line 127
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getConversationProperties(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationProperties;

    move-result-object v2

    .line 126
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mConversationProperties:Lcom/sonyericsson/conversations/conversation/ConversationProperties;

    .line 129
    :cond_1
    return-object v6

    .line 119
    .end local v0    # "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    :cond_2
    new-instance v2, Lcom/sonyericsson/conversations/model/AttachmentSummary;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/model/AttachmentSummary;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mAttachmentSummary:Lcom/sonyericsson/conversations/model/AttachmentSummary;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/Object;

    .prologue
    .line 133
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "param":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mAttachmentSummary:Lcom/sonyericsson/conversations/model/AttachmentSummary;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->updateAttachmentSummaryViews(Lcom/sonyericsson/conversations/model/AttachmentSummary;)V

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getMsgView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mFormattedSnippet:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mConversationProperties:Lcom/sonyericsson/conversations/conversation/ConversationProperties;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->updateMuteStatus(Lcom/sonyericsson/conversations/conversation/ConversationProperties;)V

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mDateString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getDateView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mDateString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 98
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    .line 100
    .local v1, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 99
    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getCachedAttachmentSummary(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/model/AttachmentSummary;

    move-result-object v0

    .line 101
    .local v0, "cachedAttachmentSummary":Lcom/sonyericsson/conversations/model/AttachmentSummary;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->updateAttachmentSummaryViews(Lcom/sonyericsson/conversations/model/AttachmentSummary;)V

    .line 102
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getMsgView()Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->getConversationSnippet(Lcom/sonyericsson/conversations/model/AttachmentSummary;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getCachedConversationProperties(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationProperties;

    move-result-object v2

    .line 105
    .local v2, "conversationProperties":Lcom/sonyericsson/conversations/conversation/ConversationProperties;
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->updateMuteStatus(Lcom/sonyericsson/conversations/conversation/ConversationProperties;)V

    .line 96
    return-void
.end method

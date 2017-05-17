.class public Lcom/sonyericsson/conversations/ui/ConversationListItemView;
.super Landroid/widget/RelativeLayout;
.source "ConversationListItemView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;,
        Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;,
        Lcom/sonyericsson/conversations/ui/ConversationListItemView$DefaultParticipant;
    }
.end annotation


# instance fields
.field private mAttachmentCounterView:Landroid/widget/TextView;

.field private mAttachmentIndicatorView:Landroid/widget/ImageView;

.field protected mCheckBox:Landroid/widget/CheckedTextView;

.field private mConversationContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

.field private mConversationListItemTask:Lcom/sonyericsson/conversations/ui/ConversationListItemTask;

.field private mDateView:Landroid/widget/TextView;

.field private mFailedIndicatorView:Landroid/widget/ImageView;

.field private mIsCheckable:Z

.field private mIsInMarked:Z

.field private mMsgView:Landroid/widget/TextView;

.field private mMuteIndicatorView:Landroid/widget/ImageView;

.field private mNameView:Landroid/widget/TextView;

.field private mThreadId:J

.field protected mUnreadIndicatorContainer:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/ConversationListItemView;Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;IIILcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;)V
    .locals 0
    .param p1, "bundle"    # Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;
    .param p2, "adapterMode"    # I
    .param p3, "unreadCount"    # I
    .param p4, "downloadFailedCount"    # I
    .param p5, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p6, "address"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->renderListItem(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;IIILcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 73
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsCheckable:Z

    .line 75
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsInMarked:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsCheckable:Z

    .line 75
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsInMarked:Z

    .line 85
    return-void
.end method

.method private createDefaultBundle(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 501
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;)V

    .line 502
    .local v0, "defaultBundle":Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->-get2(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/conversations/ui/ConversationListItemView$DefaultParticipant;

    invoke-direct {v2, p1}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$DefaultParticipant;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->-get2(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;)Ljava/util/List;

    move-result-object v2

    .line 504
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->-set0(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    .line 507
    :cond_0
    return-object v0
.end method

.method private renderContactBadge(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 368
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 369
    .local v1, "nrParticipants":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getPicBox()Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    move-result-object v0

    .line 371
    .local v0, "contactBadge":Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    if-gt v1, v6, :cond_0

    if-lez v1, :cond_2

    .line 372
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v3, v4, :cond_2

    .line 373
    :cond_0
    invoke-virtual {v0, p3}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showGroupContact(Ljava/util/List;)V

    .line 367
    :cond_1
    :goto_0
    return-void

    .line 374
    :cond_2
    if-nez v1, :cond_4

    .line 376
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 377
    new-instance v2, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v2, p2}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 378
    .local v2, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;)V

    goto :goto_0

    .line 380
    .end local v2    # "p":Lcom/sonyericsson/conversations/model/Participant;
    :cond_3
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showDraftImage()V

    goto :goto_0

    .line 382
    :cond_4
    if-ne v1, v6, :cond_1

    .line 383
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/model/Participant;

    .line 384
    .restart local v2    # "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;)V

    goto :goto_0
.end method

.method private renderConversationName(Landroid/text/SpannableStringBuilder;)V
    .locals 2
    .param p1, "conversationName"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getNameView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getNameView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    return-void
.end method

.method private renderListItem(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;IIILcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;)V
    .locals 9
    .param p1, "bundle"    # Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;
    .param p2, "adapterMode"    # I
    .param p3, "unreadCount"    # I
    .param p4, "downloadFailedCount"    # I
    .param p5, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p6, "address"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 318
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->-get0(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->renderConversationName(Landroid/text/SpannableStringBuilder;)V

    .line 320
    if-lez p3, :cond_2

    const/4 v1, 0x1

    .line 321
    .local v1, "showUnreadIndicator":Z
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getUnreadIndicatorContainer()Landroid/view/View;

    move-result-object v2

    .line 322
    .local v2, "unreadContainer":Landroid/view/View;
    if-eqz v1, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 323
    if-eqz v1, :cond_0

    .line 324
    const/16 v4, 0x63

    if-le p3, v4, :cond_4

    .line 325
    const-string/jumbo v4, "99+"

    .line 324
    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "unreadCountStr":Ljava/lang/String;
    const v4, 0x7f0d00a4

    .line 326
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    .end local v3    # "unreadCountStr":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 331
    .local v0, "listItemCharacters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string/jumbo v4, "shouldMarkUnread"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string/jumbo v4, "shouldShowCheckbox"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string/jumbo v4, "shouldShowSelectedBackground"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    packed-switch p2, :pswitch_data_0

    .line 354
    :goto_3
    const-string/jumbo v4, "shouldMarkUnread"

    .line 355
    if-le p3, p4, :cond_1

    move v5, v7

    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 354
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :goto_4
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->-get1(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;)Z

    move-result v4

    invoke-direct {p0, v0, v4, p5}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->renderListItemStatus(Ljava/util/HashMap;ZLcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 363
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->-get2(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;)Ljava/util/List;

    move-result-object v4

    .line 362
    invoke-direct {p0, p5, p6, v4}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->renderContactBadge(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Ljava/util/List;)V

    .line 316
    return-void

    .line 320
    .end local v0    # "listItemCharacters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v1    # "showUnreadIndicator":Z
    .end local v2    # "unreadContainer":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "showUnreadIndicator":Z
    goto :goto_0

    .restart local v2    # "unreadContainer":Landroid/view/View;
    :cond_3
    move v4, v6

    .line 322
    goto :goto_1

    .line 325
    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    .line 337
    .restart local v0    # "listItemCharacters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :pswitch_0
    const-string/jumbo v4, "shouldShowCheckbox"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 341
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getMsgView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 345
    :pswitch_2
    const-string/jumbo v4, "shouldShowSelectedBackground"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :pswitch_3
    const-string/jumbo v4, "shouldShowCheckbox"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private renderListItemStatus(Ljava/util/HashMap;ZLcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 12
    .param p2, "isGroupChatTerminatedByUser"    # Z
    .param p3, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ")V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "listItemCharacters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0e0030

    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 395
    .local v6, "readTextColor":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0e0031

    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v9

    .line 396
    .local v9, "unreadTextColor":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 397
    const v11, 0x7f0e0032

    .line 396
    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 399
    .local v7, "terminatedChatTextColor":I
    move v8, v6

    .line 400
    .local v8, "tintColorForAttachmentView":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getNameView()Landroid/widget/TextView;

    move-result-object v5

    .line 401
    .local v5, "nameView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getMsgView()Landroid/widget/TextView;

    move-result-object v4

    .line 402
    .local v4, "msgView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getDateView()Landroid/widget/TextView;

    move-result-object v2

    .line 403
    .local v2, "dateView":Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 405
    .local v1, "bgColor":I
    if-eqz p2, :cond_1

    .line 406
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 407
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    move v8, v7

    .line 424
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->setBackgroundColor(I)V

    .line 425
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getAttachmentView()Landroid/widget/ImageView;

    move-result-object v0

    .line 426
    .local v0, "attachmentView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 427
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v8, v10}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 428
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getAttachmentCounterView()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 431
    :cond_0
    const-string/jumbo v10, "shouldShowCheckbox"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {p0, v10}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->setCheckableMode(Z)V

    .line 434
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getBrandingPolicy()Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;

    move-result-object v10

    invoke-interface {v10, p3}, Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;->getJoynConversationIndicatorVisibility(Lcom/sonyericsson/conversations/conversation/ConversationId;)I

    move-result v3

    .line 435
    .local v3, "joynContactIndicatorVisibility":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getJoynIndicatorView()Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    return-void

    .line 411
    .end local v0    # "attachmentView":Landroid/widget/ImageView;
    .end local v3    # "joynContactIndicatorVisibility":I
    :cond_1
    const-string/jumbo v10, "shouldMarkUnread"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 412
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 413
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 415
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 416
    move v8, v9

    .line 417
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0e005f

    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 419
    :cond_2
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 420
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 421
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateCheckBoxStatus()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mCheckBox:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 162
    return-void
.end method


# virtual methods
.method public getAttachmentCounterView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mAttachmentCounterView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 133
    const v0, 0x7f0d001f

    .line 132
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mAttachmentCounterView:Landroid/widget/TextView;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mAttachmentCounterView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getAttachmentView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mAttachmentIndicatorView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 125
    const v0, 0x7f0d0020

    .line 124
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mAttachmentIndicatorView:Landroid/widget/ImageView;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mAttachmentIndicatorView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getDateView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mDateView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getFailedIndicator()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mFailedIndicatorView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 150
    const v0, 0x7f0d0021

    .line 149
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mFailedIndicatorView:Landroid/widget/ImageView;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mFailedIndicatorView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getJoynIndicatorView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 115
    const v0, 0x7f0d00a5

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMsgView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mMsgView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMuteIndicator()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mMuteIndicatorView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 157
    const v0, 0x7f0d0022

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mMuteIndicatorView:Landroid/widget/ImageView;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mMuteIndicatorView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNameView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPicBox()Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mConversationContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    return-object v0
.end method

.method public getUnreadIndicatorContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mUnreadIndicatorContainer:Landroid/view/View;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsCheckable:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 92
    const v0, 0x7f0d00a8

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mNameView:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0d00aa

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mDateView:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0d001c

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .line 94
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mConversationContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .line 96
    const v0, 0x7f0d00ab

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mMsgView:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0d00a6

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mCheckBox:Landroid/widget/CheckedTextView;

    .line 99
    const v0, 0x7f0d00a3

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mUnreadIndicatorContainer:Landroid/view/View;

    .line 90
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsInMarked:Z

    return v0
.end method

.method public populateListItem(Landroid/content/Context;Landroid/database/Cursor;ILcom/sonyericsson/conversations/ui/util/DateFormatter;)V
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "adapterMode"    # I
    .param p4, "dateFormatter"    # Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    .prologue
    .line 442
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mConversationListItemTask:Lcom/sonyericsson/conversations/ui/ConversationListItemTask;

    if-eqz v4, :cond_0

    .line 443
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mConversationListItemTask:Lcom/sonyericsson/conversations/ui/ConversationListItemTask;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->cancel(Z)Z

    .line 444
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mConversationListItemTask:Lcom/sonyericsson/conversations/ui/ConversationListItemTask;

    .line 447
    :cond_0
    const-string/jumbo v4, "thread_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 449
    .local v28, "threadId":J
    const/4 v4, 0x5

    .line 448
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 451
    .local v19, "unreadCount":I
    const/4 v4, 0x6

    .line 450
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 453
    .local v27, "sendFailedCount":I
    const/4 v4, 0x7

    .line 452
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 455
    .local v26, "deliveryFailedCount":I
    const/16 v4, 0x8

    .line 454
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 456
    .local v20, "downloadFailedCount":I
    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 457
    .local v10, "snippetType":I
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 459
    .local v8, "snippet":Ljava/lang/String;
    const/4 v4, 0x3

    .line 458
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 460
    .local v9, "snippetCharset":I
    const/16 v4, 0x9

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 462
    .local v14, "address":Ljava/lang/String;
    const/4 v4, 0x1

    .line 461
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 464
    .local v15, "recipientIds":Ljava/lang/String;
    const/16 v4, 0xa

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 465
    .local v24, "date":J
    move-object/from16 v0, p4

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->formatConversationListDate(J)Ljava/lang/String;

    move-result-object v23

    .line 467
    .local v23, "dateString":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->asConversationId(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v6

    .line 469
    .local v6, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->setThreadId(J)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getDateView()Landroid/widget/TextView;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getDateView()Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    if-gtz v27, :cond_1

    if-lez v26, :cond_2

    .line 475
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getFailedIndicator()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    :goto_0
    new-instance v4, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;

    move-object/from16 v5, p1

    move-object/from16 v7, p0

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/ui/ConversationListItemView;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mConversationListItemTask:Lcom/sonyericsson/conversations/ui/ConversationListItemTask;

    .line 482
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mConversationListItemTask:Lcom/sonyericsson/conversations/ui/ConversationListItemTask;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/ConversationListItemTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 485
    new-instance v11, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;

    move-object/from16 v12, p1

    move-object v13, v6

    move/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Ljava/lang/String;I)V

    .line 486
    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v4

    .line 485
    invoke-virtual {v11, v4}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->loadWith(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v4

    .line 487
    new-instance v16, Lcom/sonyericsson/conversations/ui/ConversationListItemView$1;

    move-object/from16 v17, p0

    move/from16 v18, p3

    move-object/from16 v21, v6

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v22}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$1;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListItemView;IIILcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;)V

    .line 485
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/sonymobile/forklift/PropertyLoader;->onComplete(Lcom/sonymobile/forklift/OnComplete1;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/sonymobile/forklift/PropertyLoader;->targetView(Landroid/view/View;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v4

    .line 495
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->createDefaultBundle(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;

    move-result-object v5

    .line 485
    invoke-virtual {v4, v5}, Lcom/sonymobile/forklift/PropertyLoader;->byDefault(Ljava/lang/Object;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/forklift/PropertyLoader;->forceRefresh()Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/forklift/PropertyLoader;->start()V

    .line 439
    return-void

    .line 474
    :cond_2
    if-gtz v20, :cond_1

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getFailedIndicator()Landroid/widget/ImageView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCheckableMode(Z)V
    .locals 2
    .param p1, "isCheckableMode"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsInMarked:Z

    .line 144
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mCheckBox:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 142
    return-void

    .line 144
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsCheckable:Z

    .line 169
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->updateCheckBoxStatus()V

    .line 167
    return-void
.end method

.method public setThreadId(J)V
    .locals 1
    .param p1, "threadId"    # J

    .prologue
    .line 192
    iput-wide p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mThreadId:J

    .line 191
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsCheckable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->setChecked(Z)V

    .line 178
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.class public Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;
.super Landroid/widget/LinearLayout;
.source "ConversationRecipientActionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;,
        Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;,
        Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$2;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I


# instance fields
.field private mAddressText:Landroid/widget/TextView;

.field private mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

.field private mContext:Landroid/content/Context;

.field private volatile mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private mConversationTypeIndicator:Landroid/widget/ImageView;

.field private mParticipantInfoBgDrable:Landroid/graphics/drawable/Drawable;

.field private mParticipantInfoLayout:Landroid/widget/LinearLayout;

.field private mParticipantList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientListAdapter:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;

.field mRecipientPanelOnClickListener:Landroid/view/View$OnClickListener;

.field private mTitleText:Landroid/widget/TextView;

.field private mUpdateRecipientsListener:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;

.field private mUpdateRecipientsTask:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->values()[Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 0
    .param p1, "title"    # Landroid/text/SpannableStringBuilder;
    .param p2, "recipientInfoList"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->onJoynGroupConversationRecipientsUpdated(Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Landroid/text/SpannableStringBuilder;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->onOneToOneConversationRecipientUpdated(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->onParticipantsUpdated(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Landroid/text/SpannableStringBuilder;)V
    .locals 0
    .param p1, "title"    # Landroid/text/SpannableStringBuilder;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->onXmsGroupConversationRecipientsUpdated(Landroid/text/SpannableStringBuilder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mUpdateRecipientsTask:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;

    .line 74
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;-><init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mUpdateRecipientsListener:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;

    .line 97
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$2;-><init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRecipientPanelOnClickListener:Landroid/view/View$OnClickListener;

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mUpdateRecipientsTask:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;

    .line 74
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;-><init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mUpdateRecipientsListener:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;

    .line 97
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$2;-><init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRecipientPanelOnClickListener:Landroid/view/View$OnClickListener;

    .line 161
    return-void
.end method

.method private asyncRefreshTitleTextAndPicture(Z)V
    .locals 7
    .param p1, "isAnimate"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 334
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v0, v1, :cond_4

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mUpdateRecipientsTask:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mUpdateRecipientsTask:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;->cancel(Z)Z

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    if-ne v0, v1, :cond_2

    .line 343
    return-void

    .line 346
    :cond_2
    invoke-static {}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 368
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_3

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    .line 370
    const-string/jumbo v1, "Unsupported conversation type \'"

    .line 369
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 371
    const-string/jumbo v1, "\'!"

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 373
    :cond_3
    return-void

    .line 348
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;

    .line 349
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mUpdateRecipientsListener:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;

    .line 348
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;ZLcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mUpdateRecipientsTask:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;

    .line 375
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mUpdateRecipientsTask:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 333
    :cond_4
    return-void

    .line 352
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateOne2OneRecipientTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;

    .line 353
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/model/Participant;

    .line 354
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mUpdateRecipientsListener:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;

    move v4, p1

    .line 352
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateOne2OneRecipientTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/Participant;ZLcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mUpdateRecipientsTask:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;

    goto :goto_0

    .line 357
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 358
    new-instance v0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateOne2OneRecipientTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;

    .line 359
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/model/Participant;

    .line 360
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mUpdateRecipientsListener:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;

    move v4, p1

    .line 358
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateOne2OneRecipientTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/Participant;ZLcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mUpdateRecipientsTask:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;

    goto :goto_0

    .line 362
    :cond_5
    new-instance v0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateXmsGroupRecipientsTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;

    .line 363
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    .line 364
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mUpdateRecipientsListener:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;

    move v4, p1

    .line 362
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateXmsGroupRecipientsTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/List;ZLcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mUpdateRecipientsTask:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;

    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hasRealParticipants(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v2, 0x0

    .line 260
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "participant$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/Participant;

    .line 261
    .local v0, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    return v2

    .line 265
    .end local v0    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onJoynGroupConversationRecipientsUpdated(Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 6
    .param p1, "title"    # Landroid/text/SpannableStringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "recipientInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;>;"
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 192
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 195
    .local v0, "recipientCount":I
    if-ne v0, v3, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 197
    const v4, 0x7f0b0269

    .line 196
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "text":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddressText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRecipientListAdapter:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRecipientListAdapter:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;->clear()V

    .line 207
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRecipientListAdapter:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 191
    :cond_0
    return-void

    .line 200
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 202
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 201
    const v4, 0x7f0b012a

    .line 200
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method private onOneToOneConversationRecipientUpdated(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Landroid/text/SpannableStringBuilder;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 213
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 218
    if-eqz v0, :cond_2

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddressText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    :goto_0
    return-void

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddressText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddressText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private onParticipantsUpdated(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 238
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->hasRealParticipants(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRecipientPanelOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    if-eqz p1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;

    .line 247
    const v2, 0x7f040006

    .line 246
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 248
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 237
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_2
    return-void
.end method

.method private onXmsGroupConversationRecipientsUpdated(Landroid/text/SpannableStringBuilder;)V
    .locals 2
    .param p1, "title"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddressText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    :cond_0
    return-void
.end method


# virtual methods
.method public collapseSelf()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;->dismiss()V

    .line 327
    :cond_0
    return-void
.end method

.method public expandSelf()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;->show()V

    .line 321
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 167
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 170
    const v2, 0x7f0d007c

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 169
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    .line 171
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoBgDrable:Landroid/graphics/drawable/Drawable;

    .line 173
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0d007e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0138

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 176
    .local v1, "titleTextSize":I
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 179
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0d0080

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 178
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddressText:Landroid/widget/TextView;

    .line 180
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddressText:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 181
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0139

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 183
    .local v0, "addressTextSize":I
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddressText:Landroid/widget/TextView;

    int-to-float v3, v0

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 185
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    .line 186
    const v3, 0x7f0d007f

    .line 185
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mConversationTypeIndicator:Landroid/widget/ImageView;

    .line 166
    return-void
.end method

.method public refresh(Z)V
    .locals 1
    .param p1, "isAnimate"    # Z

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->asyncRefreshTitleTextAndPicture(Z)V

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRecipientListAdapter:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRecipientListAdapter:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;->notifyDataSetChanged()V

    .line 314
    :cond_0
    return-void
.end method

.method public update(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 270
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 271
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;

    .line 272
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    .line 274
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    if-eqz v4, :cond_0

    .line 275
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    invoke-virtual {v4, v7}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 278
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mConversationTypeIndicator:Landroid/widget/ImageView;

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getBrandingPolicy()Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;

    move-result-object v5

    .line 279
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 278
    invoke-interface {v5, v6}, Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;->getJoynConversationIndicatorVisibility(Lcom/sonyericsson/conversations/conversation/ConversationId;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "animate":Z
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 283
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v4}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v4, v5, :cond_5

    .line 284
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->hasRealParticipants(Ljava/util/List;)Z

    move-result v4

    .line 282
    if-eqz v4, :cond_5

    .line 285
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRecipientListAdapter:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;

    if-nez v4, :cond_3

    .line 286
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v3, "participantInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;>;"
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "participant$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    .line 291
    .local v1, "participant":Lcom/sonyericsson/conversations/model/Participant;
    new-instance v4, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;

    sget-object v5, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;->INACTIVE:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;

    invoke-direct {v4, v1, v5}, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;-><init>(Lcom/sonyericsson/conversations/model/Participant;Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;)V

    .line 290
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    .end local v1    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_2
    new-instance v4, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;

    .line 295
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 294
    const v7, 0x7f030032

    .line 293
    invoke-direct {v4, v5, v7, v3, v6}, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRecipientListAdapter:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;

    .line 296
    const/4 v0, 0x1

    .line 299
    .end local v2    # "participant$iterator":Ljava/util/Iterator;
    .end local v3    # "participantInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;>;"
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    if-nez v4, :cond_4

    .line 300
    new-instance v4, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    invoke-direct {v4, p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;-><init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    .line 303
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRecipientListAdapter:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientArrayAdapter;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 304
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoBgDrable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 310
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 311
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->refresh(Z)V

    .line 269
    return-void

    .line 308
    :cond_5
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

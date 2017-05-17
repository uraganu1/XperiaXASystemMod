.class public Lcom/sonyericsson/conversations/ui/MessageBubbleView;
.super Lcom/sonyericsson/conversations/view/ExpandableLinearLayout;
.source "MessageBubbleView.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageContentStackable;
.implements Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;
.implements Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;,
        Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;,
        Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;,
        Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_ui_MessageBubbleView$StackedVisibilitySwitchesValues:[I = null

.field private static synthetic -com_sonyericsson_conversations_ui_MessageBubbleView$TimestampAnimationStateSwitchesValues:[I = null

.field protected static final ATTACHMENT_MIMETYPE:I = 0x7f0d00c7

.field protected static final ATTACHMENT_URI:I = 0x7f0d00c5

.field public static final MAX_BUBBLE_HEIGHT:I = 0x1000


# instance fields
.field private lastAnimationState:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

.field private mBubbleContent:Landroid/view/View;

.field private mBubbleLayout:Landroid/view/ViewGroup;

.field private mBubbleStyle:I

.field private mClickFilter:Lcom/sonyericsson/conversations/ui/util/ClickFilter;

.field private mClickableController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field private mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

.field private mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private mDefaultActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field private mIsStacked:Z

.field private mListItemClickListener:Landroid/view/View$OnClickListener;

.field private mMessage:Lcom/sonyericsson/conversations/model/Message;

.field private mMessageStatusController:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;

.field private mMessageTimestampView:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

.field private mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mTimestampAnimationTime:J

.field private mTimestampIsAnimating:Z

.field private mWasStacked:Z


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/ui/util/ClickFilter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mClickFilter:Lcom/sonyericsson/conversations/ui/util/ClickFilter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mClickableController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/model/Message;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageStatusController:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/ui/MessageTimestampView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageTimestampView:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_ui_MessageBubbleView$StackedVisibilitySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-com_sonyericsson_conversations_ui_MessageBubbleView$StackedVisibilitySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-com_sonyericsson_conversations_ui_MessageBubbleView$StackedVisibilitySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->values()[Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->GONE:Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->INVISIBLE:Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->USE_STACKED_STATUS:Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-com_sonyericsson_conversations_ui_MessageBubbleView$StackedVisibilitySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_ui_MessageBubbleView$TimestampAnimationStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-com_sonyericsson_conversations_ui_MessageBubbleView$TimestampAnimationStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-com_sonyericsson_conversations_ui_MessageBubbleView$TimestampAnimationStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;->values()[Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;->CLOSED:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;->OPENED:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-com_sonyericsson_conversations_ui_MessageBubbleView$TimestampAnimationStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/MessageBubbleView;Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mClickableController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/ui/MessageBubbleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mTimestampIsAnimating:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/view/ExpandableLinearLayout;-><init>(Landroid/content/Context;)V

    .line 80
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mIsStacked:Z

    .line 81
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mWasStacked:Z

    .line 82
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mTimestampIsAnimating:Z

    .line 84
    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;->CLOSED:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->lastAnimationState:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    .line 111
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V

    .line 110
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 136
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;-><init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 265
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/view/ExpandableLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mIsStacked:Z

    .line 81
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mWasStacked:Z

    .line 82
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mTimestampIsAnimating:Z

    .line 84
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;->CLOSED:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->lastAnimationState:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    .line 111
    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V

    .line 110
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 136
    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;-><init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 273
    sget-object v1, Lcom/sonyericsson/conversations/R$styleable;->MessageBubbleView:[I

    .line 272
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 274
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleStyle:I

    .line 275
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    return-void
.end method

.method private animateStackedTimestamp(Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;J)V
    .locals 6
    .param p1, "animateToState"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;
    .param p2, "duration"    # J

    .prologue
    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, "animateFrom":I
    const/4 v1, 0x0

    .line 704
    .local v1, "animateTo":I
    invoke-static {}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-getcom_sonyericsson_conversations_ui_MessageBubbleView$TimestampAnimationStateSwitchesValues()[I

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 713
    const-string/jumbo v4, "Invalid animation state, make sure it\'s one of the defined animation states in TimestampAnimationState"

    invoke-static {v4}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 718
    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->lastAnimationState:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    .line 719
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 720
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/sonyericsson/conversations/ui/MessageBubbleView$6;

    invoke-direct {v4, p0, p1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$6;-><init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 743
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageTimestampView:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 744
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v4, Lcom/sonyericsson/conversations/ui/MessageBubbleView$7;

    invoke-direct {v4, p0, v3}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$7;-><init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 752
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 701
    return-void

    .line 706
    .end local v2    # "animator":Landroid/animation/ValueAnimator;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :pswitch_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageTimestampView:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->updateHeaderTextToMessageStatus()V

    .line 707
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageTimestampView:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getMinimumHeight()I

    move-result v1

    goto :goto_0

    .line 710
    :pswitch_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageTimestampView:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getMinimumHeight()I

    move-result v0

    goto :goto_0

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private animateTimestamp(Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;J)V
    .locals 2
    .param p1, "animateToState"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;
    .param p2, "duration"    # J

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mTimestampIsAnimating:Z

    if-nez v0, :cond_0

    .line 686
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->isStacked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->animateStackedTimestamp(Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;J)V

    .line 684
    :cond_0
    return-void
.end method

.method private loadContactBadge(Lcom/sonyericsson/conversations/model/Participant;)V
    .locals 2
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 482
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonyericsson/conversations/model/Participant;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->loadContactBadge(Ljava/util/List;)V

    .line 481
    return-void
.end method

.method private loadContactBadge(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->getVisibility()I

    move-result v0

    .line 477
    .local v0, "visibility":I
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-static {p1, v1}, Lcom/sonyericsson/conversations/ui/util/ConversationItemDecorator;->setContactImage(Ljava/util/List;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    .line 478
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->setVisibility(I)V

    .line 475
    return-void
.end method

.method private resetTimestamp()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 759
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mTimestampIsAnimating:Z

    .line 760
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;->CLOSED:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->lastAnimationState:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    .line 761
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageTimestampView:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 762
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 763
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 764
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageTimestampView:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 758
    return-void
.end method

.method private setFileMessageStyle(Lcom/sonyericsson/conversations/model/Message;)V
    .locals 7
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v6, 0x0

    .line 441
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    instance-of v4, v4, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;

    if-eqz v4, :cond_4

    .line 443
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 445
    .local v2, "bubbleLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 446
    .local v1, "bubbleContentParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 449
    .local v3, "margin":I
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 450
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 451
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 457
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 458
    const v0, 0x7f020132

    .line 460
    .local v0, "backgroundId":I
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 465
    .end local v0    # "backgroundId":I
    .end local v1    # "bubbleContentParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "bubbleLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "margin":I
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    instance-of v4, v4, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 466
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 440
    :cond_1
    return-void

    .line 453
    .restart local v1    # "bubbleContentParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2    # "bubbleLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3    # "margin":I
    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 454
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 459
    :cond_3
    const v0, 0x7f020124

    .restart local v0    # "backgroundId":I
    goto :goto_1

    .line 461
    .end local v0    # "backgroundId":I
    .end local v1    # "bubbleContentParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "bubbleLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "margin":I
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    instance-of v4, v4, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;

    if-eqz v4, :cond_0

    .line 462
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private setMessageStyleByType(Lcom/sonyericsson/conversations/model/Message;)V
    .locals 4
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v3, 0x0

    .line 413
    instance-of v2, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 415
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    instance-of v2, p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v2

    .line 419
    sget-object v3, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    .line 418
    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 420
    :goto_1
    if-eqz v1, :cond_3

    .line 421
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setFileMessageStyle(Lcom/sonyericsson/conversations/model/Message;)V

    goto :goto_0

    .line 418
    :cond_2
    const/4 v1, 0x0

    .local v1, "isFileMessage":Z
    goto :goto_1

    .line 424
    .end local v1    # "isFileMessage":Z
    :cond_3
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mIsStacked:Z

    if-eqz v2, :cond_5

    .line 426
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 427
    const v0, 0x7f020133

    .line 435
    .local v0, "backgroundId":I
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    .line 428
    .end local v0    # "backgroundId":I
    :cond_4
    const v0, 0x7f020125

    .restart local v0    # "backgroundId":I
    goto :goto_2

    .line 431
    .end local v0    # "backgroundId":I
    :cond_5
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 432
    const v0, 0x7f020130

    .restart local v0    # "backgroundId":I
    goto :goto_2

    .line 433
    .end local v0    # "backgroundId":I
    :cond_6
    const v0, 0x7f020122

    .restart local v0    # "backgroundId":I
    goto :goto_2
.end method

.method private setTimestampVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 603
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->lastAnimationState:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;->OPENED:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    if-eq v0, v1, :cond_0

    .line 604
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageTimestampView:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setVisibility(I)V

    .line 602
    :cond_0
    return-void
.end method


# virtual methods
.method public animateTimestampFromLastState()V
    .locals 4

    .prologue
    .line 200
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->lastAnimationState:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    sget-object v2, Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;->OPENED:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    if-ne v1, v2, :cond_0

    .line 201
    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;->CLOSED:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    .line 202
    .local v0, "toState":Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;
    :goto_0
    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mTimestampAnimationTime:J

    invoke-direct {p0, v0, v2, v3}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->animateTimestamp(Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;J)V

    .line 199
    return-void

    .line 201
    .end local v0    # "toState":Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;->OPENED:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    .restart local v0    # "toState":Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;
    goto :goto_0
.end method

.method public getActionController()Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mDefaultActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    return-object v0
.end method

.method public getClickableController()Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mClickableController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    return-object v0
.end method

.method public getContactBadgeAnimator(Landroid/content/Context;)Landroid/animation/AnimatorSet;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 610
    const v4, 0x7f0c00e7

    .line 609
    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/util/ResourceUtils;->getFloat(Landroid/content/res/Resources;I)F

    move-result v2

    .line 611
    .local v2, "startScale":F
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00ef

    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/util/ResourceUtils;->getFloat(Landroid/content/res/Resources;I)F

    move-result v1

    .line 612
    .local v1, "noAlpha":F
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->setScaleX(F)V

    .line 613
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->setScaleY(F)V

    .line 614
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->setAlpha(F)V

    .line 616
    const/high16 v3, 0x7f050000

    .line 615
    invoke-static {p1, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 617
    .local v0, "contactBadgeAnimator":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 618
    return-object v0
.end method

.method public getContentAnimator(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;)Landroid/animation/Animator;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 622
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-nez v2, :cond_0

    .line 623
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v2

    .line 622
    if-nez v2, :cond_1

    .line 624
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    .line 625
    const/4 v3, 0x1

    .line 624
    if-ne v2, v3, :cond_2

    .line 625
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/Message;->isReceivedMessage()Z

    move-result v2

    .line 622
    if-eqz v2, :cond_2

    .line 626
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 630
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 631
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 632
    const v3, 0x7f0c00ed

    .line 631
    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/util/ResourceUtils;->getFloat(Landroid/content/res/Resources;I)F

    move-result v1

    .line 634
    .local v1, "normalScale":F
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 635
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 638
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 640
    const v2, 0x7f050004

    .line 639
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 641
    .local v0, "contentAnimator":Landroid/animation/AnimatorSet;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 647
    :goto_1
    new-instance v2, Lcom/sonyericsson/conversations/ui/MessageBubbleView$5;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$5;-><init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 653
    return-object v0

    .line 628
    .end local v0    # "contentAnimator":Landroid/animation/AnimatorSet;
    .end local v1    # "normalScale":F
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setPivotX(F)V

    goto :goto_0

    .line 644
    .restart local v1    # "normalScale":F
    :cond_3
    const v2, 0x7f050002

    .line 643
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 645
    .restart local v0    # "contentAnimator":Landroid/animation/AnimatorSet;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getLastAnimationState()Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->lastAnimationState:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    return-object v0
.end method

.method public getMessage()Lcom/sonyericsson/conversations/model/Message;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    return-object v0
.end method

.method public isMarkable()Z
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x1

    return v0
.end method

.method public isStacked()Z
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mIsStacked:Z

    return v0
.end method

.method public isTimestampAnimating()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mTimestampIsAnimating:Z

    return v0
.end method

.method public onActionBarShown()V
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 768
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mListItemClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 181
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 280
    invoke-super {p0}, Lcom/sonyericsson/conversations/view/ExpandableLinearLayout;->onFinishInflate()V

    .line 282
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 281
    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mTimestampAnimationTime:J

    .line 283
    const v0, 0x7f0d0100

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageTimestampView:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    .line 284
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;-><init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageStatusController:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;

    .line 285
    const v0, 0x7f0d00fc

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    .line 286
    const v0, 0x7f0d0016

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .line 287
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$4;-><init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mClickFilter:Lcom/sonyericsson/conversations/ui/util/ClickFilter;

    .line 279
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 299
    invoke-super/range {p0 .. p5}, Lcom/sonyericsson/conversations/view/ExpandableLinearLayout;->onLayout(ZIIII)V

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v0, v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 304
    const/16 v1, 0x1000

    .line 303
    if-le v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Message;->isReceivedMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mIsStacked:Z

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    .line 308
    const v1, 0x7f020126

    .line 307
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    .line 311
    const v1, 0x7f020123

    .line 310
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mIsStacked:Z

    if-eqz v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    .line 316
    const v1, 0x7f020134

    .line 315
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    .line 319
    const v1, 0x7f020131

    .line 318
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 230
    .local v7, "context":Landroid/content/Context;
    if-eqz p2, :cond_0

    if-nez v7, :cond_1

    .line 232
    :cond_0
    return-void

    .line 235
    :cond_1
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 236
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    const/4 v5, 0x0

    move-object v4, p2

    move-object v6, p3

    .line 235
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/Message;Landroid/net/Uri;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mClickableController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .line 237
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "text/x-vCard"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    invoke-static {v7, p2}, Lcom/sonyericsson/conversations/util/VCardUtil;->isVCardLocationObject(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    invoke-static {v7, p2}, Lcom/sonyericsson/conversations/ui/dialog/LocationVCardDialog;->showLocationDialog(Landroid/content/Context;Landroid/net/Uri;)V

    .line 228
    :goto_0
    return-void

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mClickableController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->saveVCardContact()V

    goto :goto_0

    .line 246
    :cond_3
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 245
    invoke-static {v7, v0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mClickFilter:Lcom/sonyericsson/conversations/ui/util/ClickFilter;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/ClickFilter;->executeAndFilter(I)V

    goto :goto_0

    .line 250
    :cond_4
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 251
    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$3;-><init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V

    .line 249
    invoke-static {v7, v0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleOptionalPermissionRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;)V

    goto :goto_0
.end method

.method public onTouchDown()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 156
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    instance-of v3, v3, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;

    if-eqz v3, :cond_0

    .line 157
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    check-cast v1, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;

    .line 158
    .local v1, "content":Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->getLastX()F

    move-result v4

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->getLastY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->drawableHotspotChanged(FF)V

    .line 159
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 155
    .end local v1    # "content":Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    instance-of v3, v3, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;

    if-eqz v3, :cond_1

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    check-cast v0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;

    .line 162
    .local v0, "content":Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->getLastX()F

    move-result v4

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->getLastY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->drawableHotspotChanged(FF)V

    .line 163
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setPressed(Z)V

    goto :goto_0

    .line 164
    .end local v0    # "content":Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    instance-of v3, v3, Lcom/sonyericsson/conversations/ui/MessageContentAttachment;

    if-nez v3, :cond_2

    .line 165
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    instance-of v3, v3, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;

    .line 164
    if-eqz v3, :cond_3

    .line 166
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    .line 167
    const v4, 0x7f0d00cc

    .line 166
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;

    .line 168
    .local v2, "content":Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->getLastX()F

    move-result v3

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->getLastY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->drawableHotspotChanged(FF)V

    .line 169
    invoke-virtual {v2, v6}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->setPressed(Z)V

    goto :goto_0

    .line 171
    .end local v2    # "content":Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setPressed(Z)V

    goto :goto_0
.end method

.method public onTouchUp()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 176
    return-void
.end method

.method public restoreViewOnAnimationCancelled()V
    .locals 5

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 662
    const v4, 0x7f0c00e9

    .line 661
    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/util/ResourceUtils;->getFloat(Landroid/content/res/Resources;I)F

    move-result v0

    .line 663
    .local v0, "contactBadgeScale":F
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00f0

    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/util/ResourceUtils;->getFloat(Landroid/content/res/Resources;I)F

    move-result v2

    .line 664
    .local v2, "fullAlpha":F
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 665
    const v4, 0x7f0c00ed

    .line 664
    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/util/ResourceUtils;->getFloat(Landroid/content/res/Resources;I)F

    move-result v1

    .line 666
    .local v1, "contentScale":F
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->setScaleX(F)V

    .line 667
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->setScaleY(F)V

    .line 668
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->setAlpha(F)V

    .line 669
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 670
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 671
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 672
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageTimestampView:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setAlpha(F)V

    .line 673
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setRelativeHeight(F)V

    .line 660
    return-void
.end method

.method public setBubbleContent(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    instance-of v0, v0, Lcom/sonyericsson/conversations/ui/StyleableBubbleContent;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    check-cast v0, Lcom/sonyericsson/conversations/ui/StyleableBubbleContent;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleStyle:I

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/StyleableBubbleContent;->setStyle(I)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    instance-of v0, v0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    check-cast v0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->setOnTextSelectedListener(Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;)V

    .line 325
    :cond_1
    return-void
.end method

.method public setContactBadge(Lcom/sonyericsson/conversations/model/Message;Ljava/util/List;)V
    .locals 8
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/model/Message;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 494
    invoke-static {}, Lcom/sonyericsson/conversations/model/Participant;->getMySelfParticipant()Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v6

    .line 495
    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v7

    .line 494
    invoke-virtual {v6, v7}, Lcom/sonymobile/forklift/HeavyProperty;->loadSyncWith(Lcom/sonymobile/forklift/Forklift;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {p0, v6}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->loadContactBadge(Lcom/sonyericsson/conversations/model/Participant;)V

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_5

    .line 499
    instance-of v6, p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v6, :cond_2

    move-object v2, p1

    .line 500
    check-cast v2, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 501
    .local v2, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v1

    .line 502
    .local v1, "imMessage":Lcom/sonymobile/jms/message/ImMessage;
    instance-of v6, v1, Lcom/sonymobile/jms/message/ImUserMessage;

    if-eqz v6, :cond_0

    .line 503
    check-cast v1, Lcom/sonymobile/jms/message/ImUserMessage;

    .end local v1    # "imMessage":Lcom/sonymobile/jms/message/ImMessage;
    invoke-interface {v1}, Lcom/sonymobile/jms/message/ImUserMessage;->getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "address":Ljava/lang/String;
    new-instance v4, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v4, v0}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 505
    .local v4, "sender":Lcom/sonyericsson/conversations/model/Participant;
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->loadContactBadge(Lcom/sonyericsson/conversations/model/Participant;)V

    goto :goto_0

    .line 507
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    .end local v4    # "sender":Lcom/sonyericsson/conversations/model/Participant;
    :cond_2
    instance-of v6, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v6, :cond_3

    move-object v3, p1

    .line 508
    check-cast v3, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 509
    .local v3, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->getParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getSender()Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->loadContactBadge(Lcom/sonyericsson/conversations/model/Participant;)V

    goto :goto_0

    .line 510
    .end local v3    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    :cond_3
    instance-of v6, p1, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v6, :cond_4

    move-object v5, p1

    .line 511
    check-cast v5, Lcom/sonyericsson/conversations/model/SmsMessage;

    .line 512
    .local v5, "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    new-instance v4, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/SmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 513
    .restart local v4    # "sender":Lcom/sonyericsson/conversations/model/Participant;
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->loadContactBadge(Lcom/sonyericsson/conversations/model/Participant;)V

    goto :goto_0

    .line 515
    .end local v4    # "sender":Lcom/sonyericsson/conversations/model/Participant;
    .end local v5    # "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    :cond_4
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->loadContactBadge(Ljava/util/List;)V

    goto :goto_0

    .line 519
    :cond_5
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->loadContactBadge(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setContactBadgeAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 657
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->setAlpha(F)V

    .line 656
    return-void
.end method

.method public setHighlightPattern(Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "highlightPattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    instance-of v0, v0, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    check-cast v0, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 535
    :cond_0
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 5
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    const-string/jumbo v2, "Null message in bubble"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 366
    return-void

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->resetTimestamp()V

    .line 370
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 371
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 372
    new-instance v2, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 374
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getDefaultMessageOptions(Lcom/sonyericsson/conversations/model/Message;)I

    move-result v4

    .line 372
    invoke-direct {v2, v3, p2, p1, v4}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/Message;I)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mDefaultActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .line 375
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageStatusController:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mDefaultActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->setMessageActionsController(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V

    .line 376
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setMessageStyleByType(Lcom/sonyericsson/conversations/model/Message;)V

    .line 377
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageTimestampView:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-virtual {v2, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 378
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageStatusController:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->setMessage(Lcom/sonyericsson/conversations/model/Message;)V

    .line 379
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    instance-of v2, v2, Lcom/sonyericsson/conversations/ui/MessageContent;

    if-eqz v2, :cond_4

    .line 380
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    check-cast v1, Lcom/sonyericsson/conversations/ui/MessageContent;

    .line 381
    .local v1, "content":Lcom/sonyericsson/conversations/ui/MessageContent;
    instance-of v2, v1, Lcom/sonyericsson/conversations/ui/MessageContentClickable;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 382
    check-cast v0, Lcom/sonyericsson/conversations/ui/MessageContentClickable;

    .line 383
    .local v0, "clickable":Lcom/sonyericsson/conversations/ui/MessageContentClickable;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v0, v2}, Lcom/sonyericsson/conversations/ui/MessageContentClickable;->setOnObjectLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 384
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v0, v2}, Lcom/sonyericsson/conversations/ui/MessageContentClickable;->setOnTextLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 385
    invoke-interface {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable;->setOnShortClickListener(Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;)V

    .line 387
    .end local v0    # "clickable":Lcom/sonyericsson/conversations/ui/MessageContentClickable;
    :cond_1
    instance-of v2, v1, Lcom/sonyericsson/conversations/ui/MessageActionsDelegate;

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 388
    check-cast v2, Lcom/sonyericsson/conversations/ui/MessageActionsDelegate;

    .line 389
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mDefaultActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .line 388
    invoke-interface {v2, v3}, Lcom/sonyericsson/conversations/ui/MessageActionsDelegate;->setMessageActionsController(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V

    .line 391
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v3

    const v4, 0x7f0d00c5

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 392
    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserOwner()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 393
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 395
    :cond_3
    invoke-interface {v1, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageContent;->setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 363
    .end local v1    # "content":Lcom/sonyericsson/conversations/ui/MessageContent;
    :cond_4
    return-void
.end method

.method public setMessageOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mListItemClickListener:Landroid/view/View$OnClickListener;

    .line 210
    return-void
.end method

.method public setMessageStatusPopupMenuListener(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;)V
    .locals 1
    .param p1, "messageStatusPopupMenuListener"    # Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageStatusController:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageStatusController:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->setMessageStatusPopupMenuListener(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;)V

    .line 355
    :cond_0
    return-void
.end method

.method public setParticipantStrings(Ljava/lang/String;)V
    .locals 1
    .param p1, "senderString"    # Ljava/lang/String;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageTimestampView:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setParticipantStrings(Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public setStacked(Z)V
    .locals 2
    .param p1, "isStacked"    # Z

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->isStacked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mWasStacked:Z

    .line 549
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mIsStacked:Z

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    instance-of v0, v0, Lcom/sonyericsson/conversations/ui/MessageContentStackable;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    check-cast v0, Lcom/sonyericsson/conversations/ui/MessageContentStackable;

    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mIsStacked:Z

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageContentStackable;->setStacked(Z)V

    .line 547
    :cond_0
    return-void
.end method

.method public setTimestampAndContactBadgeVisibility(Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;)V
    .locals 5
    .param p1, "visibility"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 575
    invoke-static {}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-getcom_sonyericsson_conversations_ui_MessageBubbleView$StackedVisibilitySwitchesValues()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 592
    const-string/jumbo v0, "Invalid visibility, make sure it\'s one of the defined visibilities in StackedVisibility"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 577
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setTimestampVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->setVisibility(I)V

    goto :goto_0

    .line 583
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setTimestampVisibility(I)V

    goto :goto_0

    .line 586
    :pswitch_2
    iget-boolean v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mIsStacked:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setTimestampVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    iget-boolean v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mIsStacked:Z

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 586
    goto :goto_1

    .line 575
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public updateTimestampToAnimationState(Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;)V
    .locals 2
    .param p1, "animationState"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mTimestampIsAnimating:Z

    .line 192
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->animateTimestamp(Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;J)V

    .line 190
    return-void
.end method

.method public wasPreviouslyStacked()Z
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mWasStacked:Z

    return v0
.end method

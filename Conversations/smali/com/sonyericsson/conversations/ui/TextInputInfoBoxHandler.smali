.class public abstract Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;
.super Ljava/lang/Object;
.source "TextInputInfoBoxHandler.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;
.implements Lcom/sonymobile/jms/conversation/ImComposeEventListener;
.implements Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;,
        Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$SizeFilter;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I


# instance fields
.field private mAddOrDeleteListener:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;

.field private mBeforeMsgText:Ljava/lang/CharSequence;

.field private mComposer:Lcom/sonyericsson/conversations/ui/Composer;

.field protected mContext:Landroid/content/Context;

.field private mCurrentMaxLenFil:I

.field private mHandler:Landroid/os/Handler;

.field private mImMessageCharset:Ljava/nio/charset/Charset;

.field private mJoynMode:Z

.field private mMaxImMessageSize:I

.field private mMmsInputFilter:Lcom/sonyericsson/conversations/ui/ToastLengthFilter;

.field private mOldNbrLines:I

.field private mResizeProgress:I

.field private mResizedVideo:Landroid/net/Uri;

.field private mReverseMsgFlg:Z

.field protected mTextInput:Landroid/widget/TextView;

.field protected mTextInputCommandArgs:Landroid/os/Bundle;

.field private mToast:Landroid/widget/Toast;

.field private mTypingPersons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mResizeProgress:I

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mResizedVideo:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;Lcom/sonyericsson/conversations/conversation/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->composerViewsConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .param p3, "textInput"    # Landroid/widget/TextView;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    .line 96
    iput v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mOldNbrLines:I

    .line 99
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mBeforeMsgText:Ljava/lang/CharSequence;

    .line 102
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mReverseMsgFlg:Z

    .line 105
    iput v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mCurrentMaxLenFil:I

    .line 109
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTypingPersons:Ljava/util/Set;

    .line 117
    iput v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mResizeProgress:I

    .line 143
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 145
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    .line 146
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mHandler:Landroid/os/Handler;

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mToast:Landroid/widget/Toast;

    .line 148
    new-instance v0, Lcom/sonyericsson/conversations/ui/ToastLengthFilter;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    const/16 v2, 0x2710

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ToastLengthFilter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mMmsInputFilter:Lcom/sonyericsson/conversations/ui/ToastLengthFilter;

    .line 142
    return-void
.end method

.method private adjustTextViewHeight()V
    .locals 2

    .prologue
    .line 414
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 415
    .local v0, "newNbrLines":I
    iget v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mOldNbrLines:I

    if-eq v1, v0, :cond_0

    .line 418
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 420
    :cond_0
    iput v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mOldNbrLines:I

    .line 413
    return-void
.end method

.method private applyJoynFilter()V
    .locals 5

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    .line 304
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$SizeFilter;

    iget v3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mMaxImMessageSize:I

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mImMessageCharset:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$SizeFilter;-><init>(ILjava/nio/charset/Charset;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 303
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 302
    return-void
.end method

.method private applyMmsFilter()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 308
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 309
    .local v0, "filter":Landroid/text/InputFilter;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mMmsInputFilter:Lcom/sonyericsson/conversations/ui/ToastLengthFilter;

    if-ne v0, v5, :cond_0

    .line 310
    return-void

    .line 308
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v0    # "filter":Landroid/text/InputFilter;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mMmsInputFilter:Lcom/sonyericsson/conversations/ui/ToastLengthFilter;

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 307
    return-void
.end method

.method private applySmsFilter(Ljava/lang/CharSequence;)V
    .locals 13
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 318
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSmsSegments()I

    move-result v6

    .line 317
    invoke-direct {p0, v11, v6}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->getMaxLengthFilter(II)I

    move-result v1

    .line 320
    .local v1, "maxLengthFilter16bit":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSmsSegments()I

    move-result v6

    .line 319
    invoke-direct {p0, v10, v6}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->getMaxLengthFilter(II)I

    move-result v2

    .line 324
    .local v2, "maxLengthFilter7bit":I
    invoke-static {p1, v9}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v3

    .line 331
    .local v3, "params":[I
    const-string/jumbo v6, "Conversations"

    invoke-static {v6, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 332
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "params[0] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 333
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "params[1] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "params[2] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v12

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 335
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "params[3] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 336
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "params[4] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    aget v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 340
    :cond_0
    aget v6, v3, v11

    if-ne v6, v10, :cond_3

    .line 341
    iget v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mCurrentMaxLenFil:I

    if-eq v6, v2, :cond_1

    .line 342
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    new-array v7, v10, [Landroid/text/InputFilter;

    .line 343
    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v8, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v9

    .line 342
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 346
    iput v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mCurrentMaxLenFil:I

    .line 348
    const-string/jumbo v6, "Conversations"

    invoke-static {v6, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 349
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Changed MaxLength("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") : 7bit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 367
    :cond_1
    :goto_0
    aget v6, v3, v9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSmsSegments()I

    move-result v7

    if-gt v6, v7, :cond_4

    .line 368
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {p1, v9, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mBeforeMsgText:Ljava/lang/CharSequence;

    .line 316
    :cond_2
    :goto_1
    return-void

    .line 353
    :cond_3
    iget v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mCurrentMaxLenFil:I

    if-eq v6, v1, :cond_1

    .line 354
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    new-array v7, v10, [Landroid/text/InputFilter;

    .line 355
    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v8, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v9

    .line 354
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 358
    iput v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mCurrentMaxLenFil:I

    .line 360
    const-string/jumbo v6, "Conversations"

    invoke-static {v6, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 361
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Changed MaxLength("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") : 16bit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_4
    iput-boolean v10, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mReverseMsgFlg:Z

    .line 372
    aget v6, v3, v11

    if-ne v6, v10, :cond_6

    .line 373
    aget v6, v3, v10

    aget v7, v3, v9

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v10, v7}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->getMaxLengthFilter(II)I

    move-result v7

    if-le v6, v7, :cond_2

    .line 375
    move v5, v2

    .line 376
    .local v5, "subLength":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v6, v2, :cond_5

    .line 377
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 379
    :cond_5
    invoke-interface {p1, v9, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 380
    .local v4, "reverseMsgText":Ljava/lang/CharSequence;
    invoke-static {v4, v9}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    .line 381
    .local v0, "calc":[I
    aget v6, v0, v9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSmsSegments()I

    move-result v7

    if-gt v6, v7, :cond_2

    .line 382
    invoke-interface {v4, v9, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mBeforeMsgText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 386
    .end local v0    # "calc":[I
    .end local v4    # "reverseMsgText":Ljava/lang/CharSequence;
    .end local v5    # "subLength":I
    :cond_6
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mBeforeMsgText:Ljava/lang/CharSequence;

    invoke-static {v6, v9}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    .line 387
    .restart local v0    # "calc":[I
    aget v6, v0, v10

    if-ge v6, v1, :cond_7

    .line 388
    invoke-interface {p1, v9, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mBeforeMsgText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 389
    :cond_7
    aget v6, v0, v11

    if-ne v6, v10, :cond_2

    .line 390
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    new-array v7, v10, [Landroid/text/InputFilter;

    .line 391
    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v8, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v9

    .line 390
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 394
    iput v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mCurrentMaxLenFil:I

    goto/16 :goto_1
.end method

.method private composerViewsConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)Z
    .locals 2
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    .line 292
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    .line 295
    .local v0, "activeImConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    if-eq v0, v1, :cond_0

    .line 296
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const/4 v1, 0x1

    return v1

    .line 297
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private enableComposeEventListener(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 665
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 666
    :cond_0
    return-void

    .line 668
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v0

    .line 669
    .local v0, "imConversationApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    if-nez v0, :cond_2

    .line 670
    return-void

    .line 672
    :cond_2
    if-eqz p1, :cond_3

    .line 673
    invoke-interface {v0, p0}, Lcom/sonymobile/jms/conversation/ImConversationApi;->registerImConversationEventListener(Lcom/sonymobile/jms/conversation/ImConversationEventListener;)V

    .line 664
    :goto_0
    return-void

    .line 675
    :cond_3
    invoke-interface {v0, p0}, Lcom/sonymobile/jms/conversation/ImConversationApi;->unregisterImConversationEventListener(Lcom/sonymobile/jms/conversation/ImConversationEventListener;)V

    .line 676
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTypingPersons:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 677
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->updateTextInputInfoBoxes(Z)V

    goto :goto_0
.end method

.method private getMaxLengthFilter(II)I
    .locals 3
    .param p1, "encoding"    # I
    .param p2, "segment"    # I

    .prologue
    const/4 v2, 0x1

    .line 153
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 154
    if-ne p2, v2, :cond_0

    .line 155
    const/16 v0, 0x46

    .line 166
    .local v0, "length":I
    :goto_0
    return v0

    .line 157
    .end local v0    # "length":I
    :cond_0
    mul-int/lit8 v0, p2, 0x43

    .restart local v0    # "length":I
    goto :goto_0

    .line 160
    .end local v0    # "length":I
    :cond_1
    if-ne p2, v2, :cond_2

    .line 161
    const/16 v0, 0xa0

    .restart local v0    # "length":I
    goto :goto_0

    .line 163
    .end local v0    # "length":I
    :cond_2
    mul-int/lit16 v0, p2, 0x99

    .restart local v0    # "length":I
    goto :goto_0
.end method

.method private getTypingInfoString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 545
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/Apis;->getContactManager()Lcom/sonyericsson/conversations/contact/ContactManager;

    move-result-object v0

    .line 546
    .local v0, "contactManager":Lcom/sonyericsson/conversations/contact/ContactManager;
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTypingPersons:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 547
    .local v6, "typingPersonsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 549
    const-string/jumbo v7, ""

    return-object v7

    .line 552
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 553
    .local v5, "typingPerson":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 556
    invoke-virtual {v5}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v7

    .line 555
    invoke-virtual {v0, v7}, Lcom/sonyericsson/conversations/contact/ContactManager;->getDisplayNameWithFallback(Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "displayName":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v1, v8, v10

    const v9, 0x7f0b01d7

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 562
    .end local v1    # "displayName":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    .line 564
    const v8, 0x7f0b01da

    .line 563
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 565
    .local v3, "lastDivider":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    .line 566
    const v8, 0x7f0b01d9

    .line 565
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, "divider":Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 568
    invoke-virtual {v5}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sonyericsson/conversations/contact/ContactManager;->getDisplayNameWithFallback(Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 569
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "typingPerson":Lcom/sonymobile/jms/contact/ImContactNumber;
    check-cast v5, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 570
    .restart local v5    # "typingPerson":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 573
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 577
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 580
    :cond_3
    invoke-virtual {v5}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sonyericsson/conversations/contact/ContactManager;->getDisplayNameWithFallback(Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 581
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    const v9, 0x7f0b01d8

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private putArg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    const/4 v0, 0x0

    return v0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const/4 v0, 0x1

    return v0
.end method

.method private registerResizeListener()V
    .locals 1

    .prologue
    .line 661
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getResizeManager()Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->registerMediaResizeProgressListener(Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;)V

    .line 660
    return-void
.end method

.method private showLengthLimitReachedToast()V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0135

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 636
    const/4 v1, 0x1

    .line 635
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->showToast(Ljava/lang/String;I)V

    .line 634
    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mJoynMode:Z

    if-eqz v0, :cond_0

    .line 607
    return-void

    .line 610
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->showToastNonChecked(Ljava/lang/String;I)V

    .line 605
    return-void
.end method

.method private showToastNonChecked(Ljava/lang/String;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 614
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$4;-><init>(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 613
    return-void
.end method

.method private unregisterResizeListener()V
    .locals 1

    .prologue
    .line 655
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getResizeManager()Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->unregisterMediaResizeProgressListener(Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;)V

    .line 656
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mResizeProgress:I

    .line 657
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mResizedVideo:Landroid/net/Uri;

    .line 654
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 171
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v2, :cond_0

    .line 172
    return-void

    .line 174
    :cond_0
    const/4 v1, 0x0

    .line 176
    .local v1, "showLimitReachedToast":Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 177
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mReverseMsgFlg:Z

    if-eqz v2, :cond_1

    .line 178
    iput-boolean v5, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mReverseMsgFlg:Z

    .line 179
    const/4 v1, 0x1

    .line 180
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mBeforeMsgText:Ljava/lang/CharSequence;

    invoke-interface {p1, v5, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 182
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mCurrentMaxLenFil:I

    if-lt v2, v3, :cond_2

    .line 183
    const/4 v1, 0x1

    .line 187
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getText()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "originalText":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;Z)V

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 193
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mAddOrDeleteListener:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;

    if-eqz v2, :cond_3

    .line 194
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mAddOrDeleteListener:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;

    invoke-interface {v2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;->onAllTextDeleted()V

    .line 211
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->adjustTextViewHeight()V

    .line 213
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mJoynMode:Z

    if-eqz v2, :cond_4

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mImMessageCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    iget v3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mMaxImMessageSize:I

    if-lt v2, v3, :cond_4

    .line 214
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0b01f4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->showToastNonChecked(Ljava/lang/String;I)V

    .line 170
    :cond_4
    return-void

    .line 198
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 200
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mAddOrDeleteListener:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;

    if-eqz v2, :cond_6

    .line 201
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mAddOrDeleteListener:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;

    invoke-interface {v2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;->onFirstTextEntered()V

    .line 205
    :cond_6
    if-nez v1, :cond_7

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getComposerContentType()I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 206
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getSmsCounterInfo()Lcom/sonyericsson/conversations/ui/SmsCounterInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->isTextTooLong()Z

    move-result v2

    .line 205
    if-eqz v2, :cond_3

    .line 206
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    .line 205
    if-eqz v2, :cond_3

    .line 207
    :cond_7
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->showLengthLimitReachedToast()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 277
    return-void
.end method

.method protected abstract forceRefreshInfoBoxes()V
.end method

.method public messageTypeChanged(II)V
    .locals 3
    .param p1, "oldType"    # I
    .param p2, "newType"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->updateTextInputInfoBoxes(Z)V

    .line 402
    if-eq p1, v2, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 404
    :cond_0
    return-void

    .line 402
    :cond_1
    if-eq p2, v2, :cond_0

    .line 403
    if-eq p2, v1, :cond_0

    .line 406
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    if-eq p1, v1, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->shouldUseGroupMms()Z

    move-result v0

    if-nez v0, :cond_3

    .line 407
    :cond_2
    if-eq p1, p2, :cond_4

    .line 409
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->forceRefreshInfoBoxes()V

    .line 400
    :cond_4
    return-void
.end method

.method public onComposingEventUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/contact/ImContactNumber;Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;)V
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "imContactNumber"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p3, "state"    # Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

    .prologue
    .line 684
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mJoynMode:Z

    if-nez v1, :cond_0

    .line 685
    return-void

    .line 687
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    .line 689
    .local v0, "activeImConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    if-eq v0, v1, :cond_1

    .line 690
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 693
    sget-object v1, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;->IS_TYPING:Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

    if-ne p3, v1, :cond_2

    .line 694
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTypingPersons:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 698
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->updateTextInputInfoBoxes(Z)V

    .line 683
    return-void

    .line 691
    :cond_1
    return-void

    .line 696
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTypingPersons:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onImageResizeCompleted(Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/net/Uri;)V
    .locals 0
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "image"    # Landroid/net/Uri;

    .prologue
    .line 270
    return-void
.end method

.method public onImageResizeError(Ljava/lang/String;)V
    .locals 0
    .param p1, "video"    # Ljava/lang/String;

    .prologue
    .line 273
    return-void
.end method

.method public onNonResizableMediaFound(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V
    .locals 0
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/Conversation;",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p3, "fileUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mJoynMode:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->applyJoynFilter()V

    .line 281
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->applyMmsFilter()V

    goto :goto_0

    .line 287
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->applySmsFilter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onVideoResizeCompleted(Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/net/Uri;)V
    .locals 2
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "video"    # Landroid/net/Uri;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$2;-><init>(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;Lcom/sonyericsson/conversations/conversation/Conversation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void
.end method

.method public onVideoResizeError(Lcom/sonyericsson/conversations/conversation/Conversation;Ljava/lang/String;)V
    .locals 2
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "video"    # Ljava/lang/String;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$3;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$3;-><init>(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;Lcom/sonyericsson/conversations/conversation/Conversation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    return-void
.end method

.method public onVideoResizeProgress(Lcom/sonyericsson/conversations/conversation/Conversation;ILandroid/net/Uri;)V
    .locals 2
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "progress"    # I
    .param p3, "video"    # Landroid/net/Uri;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;-><init>(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;Lcom/sonyericsson/conversations/conversation/Conversation;ILandroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    return-void
.end method

.method public setJoynMode(Z)V
    .locals 3
    .param p1, "joynMode"    # Z

    .prologue
    .line 702
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mJoynMode:Z

    .line 703
    if-eqz p1, :cond_1

    .line 706
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v0

    .line 707
    .local v0, "imSettingApi":Lcom/sonymobile/jms/setting/ImSettingApi;
    if-eqz v0, :cond_0

    .line 708
    invoke-interface {v0}, Lcom/sonymobile/jms/setting/ImSettingApi;->getImTextMessageCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mImMessageCharset:Ljava/nio/charset/Charset;

    .line 709
    invoke-static {}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 718
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTypingPersons:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 725
    .end local v0    # "imSettingApi":Lcom/sonymobile/jms/setting/ImSettingApi;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->updateTextInputInfoBoxes(Z)V

    .line 701
    return-void

    .line 711
    .restart local v0    # "imSettingApi":Lcom/sonymobile/jms/setting/ImSettingApi;
    :pswitch_0
    invoke-interface {v0}, Lcom/sonymobile/jms/setting/ImSettingApi;->getMaxGroupConversationMessageLength()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mMaxImMessageSize:I

    goto :goto_0

    .line 715
    :pswitch_1
    invoke-interface {v0}, Lcom/sonymobile/jms/setting/ImSettingApi;->getMaxOne2OneConversationMessageLength()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mMaxImMessageSize:I

    goto :goto_0

    .line 723
    .end local v0    # "imSettingApi":Lcom/sonymobile/jms/setting/ImSettingApi;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTypingPersons:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setTextAddedOrDeletedListener(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mAddOrDeleteListener:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;

    .line 630
    return-void
.end method

.method public smsCounterInfoChanged(Lcom/sonyericsson/conversations/ui/SmsCounterInfo;)V
    .locals 1
    .param p1, "newInfo"    # Lcom/sonyericsson/conversations/ui/SmsCounterInfo;

    .prologue
    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->updateTextInputInfoBoxes(Z)V

    .line 424
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->registerResizeListener()V

    .line 642
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 644
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->enableComposeEventListener(Z)V

    .line 640
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->unregisterResizeListener()V

    .line 650
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->enableComposeEventListener(Z)V

    .line 651
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 648
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->updateTextInputInfoBoxes(Z)V

    .line 593
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->forceRefreshInfoBoxes()V

    .line 588
    return-void
.end method

.method protected updateTextInputCommandArgs()Z
    .locals 15

    .prologue
    .line 431
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v11, :cond_0

    .line 432
    const/4 v11, 0x0

    return v11

    .line 434
    :cond_0
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v11}, Lcom/sonyericsson/conversations/ui/Composer;->getComposerContentType()I

    move-result v0

    .line 435
    .local v0, "messageType":I
    const-string/jumbo v1, ""

    .line 436
    .local v1, "messageTypeInfo":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 437
    .local v6, "primaryInfo":Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 440
    .local v8, "secondaryInfo":Ljava/lang/String;
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v11}, Lcom/sonyericsson/conversations/ui/Composer;->getSmsCounterInfo()Lcom/sonyericsson/conversations/ui/SmsCounterInfo;

    move-result-object v9

    .line 442
    .local v9, "smsCounterInfo":Lcom/sonyericsson/conversations/ui/SmsCounterInfo;
    packed-switch v0, :pswitch_data_0

    .line 513
    :cond_1
    :goto_0
    const-string/jumbo v11, "message_type_info"

    invoke-direct {p0, v11, v1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->putArg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 514
    .local v10, "updated":Z
    const-string/jumbo v11, "primary_info"

    invoke-direct {p0, v11, v6}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->putArg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    or-int/2addr v10, v11

    .line 515
    const-string/jumbo v11, "secondary_info"

    invoke-direct {p0, v11, v8}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->putArg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    or-int/2addr v10, v11

    .line 516
    const-string/jumbo v11, "typing_info"

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->getTypingInfoString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->putArg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    or-int/2addr v10, v11

    .line 518
    const-string/jumbo v7, ""

    .line 519
    .local v7, "progress":Ljava/lang/String;
    iget v11, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mResizeProgress:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 520
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mResizeProgress:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 523
    :cond_2
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    .line 524
    const-string/jumbo v12, "resize_info_txt"

    .line 523
    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 525
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    const-string/jumbo v12, "resize_info_txt"

    invoke-virtual {v11, v12, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mResizedVideo:Landroid/net/Uri;

    if-eqz v11, :cond_3

    .line 527
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    const-string/jumbo v12, "resize_info_uri"

    .line 528
    iget-object v13, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mResizedVideo:Landroid/net/Uri;

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 527
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_3
    const/4 v10, 0x1

    .line 533
    .end local v10    # "updated":Z
    :cond_4
    return v10

    .line 444
    .end local v7    # "progress":Ljava/lang/String;
    :pswitch_0
    iget-boolean v11, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mJoynMode:Z

    if-nez v11, :cond_1

    .line 448
    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->getNumberOfSegments()I

    move-result v4

    .line 449
    .local v4, "numberOfSegments":I
    if-lez v4, :cond_1

    .line 450
    const/4 v11, 0x1

    if-le v4, v11, :cond_5

    .line 452
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    .line 453
    const v12, 0x7f0b0134

    .line 452
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 451
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 454
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 451
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 457
    :cond_5
    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->getNumberOfUsedCharsInSegment()I

    move-result v5

    .line 458
    .local v5, "numberOfUsedCharsInSegment":I
    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->getNumberOfRemainingCharsInSegment()I

    move-result v3

    .line 460
    .local v3, "numberOfRemainingCharsInSegment":I
    const/16 v11, 0x14

    if-gt v3, v11, :cond_6

    .line 463
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 464
    :cond_6
    const/4 v11, 0x2

    if-ne v4, v11, :cond_7

    .line 468
    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->getEncoding()I

    move-result v11

    packed-switch v11, :pswitch_data_1

    .line 479
    const/4 v2, 0x7

    .line 482
    .local v2, "nrSpillOverCharacters":I
    :goto_1
    add-int/lit8 v11, v2, 0x9

    if-gt v5, v11, :cond_1

    .line 491
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 492
    sub-int v12, v5, v2

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 491
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 470
    .end local v2    # "nrSpillOverCharacters":I
    :pswitch_1
    const/4 v2, 0x3

    .line 471
    .restart local v2    # "nrSpillOverCharacters":I
    goto :goto_1

    .line 474
    .end local v2    # "nrSpillOverCharacters":I
    :pswitch_2
    const/4 v2, 0x6

    .line 475
    .restart local v2    # "nrSpillOverCharacters":I
    goto :goto_1

    .line 495
    .end local v2    # "nrSpillOverCharacters":I
    :cond_7
    const/4 v11, 0x2

    if-le v4, v11, :cond_1

    .line 496
    const/16 v11, 0x9

    if-gt v5, v11, :cond_1

    .line 498
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 504
    .end local v3    # "numberOfRemainingCharsInSegment":I
    .end local v4    # "numberOfSegments":I
    .end local v5    # "numberOfUsedCharsInSegment":I
    :pswitch_3
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    .line 505
    const v12, 0x7f0b0133

    .line 504
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 468
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract updateTextInputInfoBoxes(Z)V
.end method

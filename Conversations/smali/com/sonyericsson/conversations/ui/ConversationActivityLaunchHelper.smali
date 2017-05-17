.class public Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;
.super Ljava/lang/Object;
.source "ConversationActivityLaunchHelper.java"


# static fields
.field private static final CONVERSATION_ACTIVITY_ACTION:[Ljava/lang/String;

.field private static final CONVERSATION_ACTIVITY_MIMETYPE:[Ljava/lang/String;

.field private static final CONVERSATION_ACTIVITY_SCHEME:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "android.intent.action.VIEW"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.intent.action.SENDTO"

    aput-object v1, v0, v3

    .line 24
    const-string/jumbo v1, "android.intent.action.SEND"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.intent.action.SEND_MULTIPLE"

    aput-object v1, v0, v5

    .line 23
    sput-object v0, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->CONVERSATION_ACTIVITY_ACTION:[Ljava/lang/String;

    .line 25
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "vnd.android-dir/mms-sms"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->CONVERSATION_ACTIVITY_MIMETYPE:[Ljava/lang/String;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "sms"

    aput-object v1, v0, v2

    const-string/jumbo v1, "smsto"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mms"

    aput-object v1, v0, v4

    const-string/jumbo v1, "mmsto"

    aput-object v1, v0, v5

    const-string/jumbo v1, "mailto"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->CONVERSATION_ACTIVITY_SCHEME:[Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConversationHomeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    return-object v0
.end method

.method public static getUnReadMessagesThreadsFromNotificationIntent(Landroid/content/Intent;)I
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->UNREAD_MESSAGE_THREADS:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static isNotificationIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->getUnReadMessagesThreadsFromNotificationIntent(Landroid/content/Intent;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static shouldShowConversationListPane(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

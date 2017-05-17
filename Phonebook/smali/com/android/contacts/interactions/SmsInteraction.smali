.class public Lcom/android/contacts/interactions/SmsInteraction;
.super Ljava/lang/Object;
.source "SmsInteraction.java"

# interfaces
.implements Lcom/android/contacts/interactions/ContactInteraction;


# static fields
.field private static final SMS_ICON_RES:I = 0x7f020065

.field private static final URI_TARGET_PREFIX:Ljava/lang/String; = "smsto:"

.field private static sBidiFormatter:Landroid/text/BidiFormatter;


# instance fields
.field private mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/interactions/SmsInteraction;->sBidiFormatter:Landroid/text/BidiFormatter;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/contacts/interactions/SmsInteraction;->mValues:Landroid/content/ContentValues;

    .line 46
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v2, p0, Lcom/android/contacts/interactions/SmsInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v3, "address"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    .line 102
    :cond_0
    sget-object v1, Lcom/android/contacts/interactions/SmsInteraction;->sBidiFormatter:Landroid/text/BidiFormatter;

    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v0, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "body"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/SmsInteraction;->getViewHeader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/SmsInteraction;->getViewBody(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/SmsInteraction;->getViewFooter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "messageDetails":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 171
    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 170
    const v3, 0x7f09019f

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDate()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "date"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDateSent()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "date_sent"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getFooterIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconResourceId()I
    .locals 1

    .prologue
    .line 176
    const v0, 0x7f020065

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/android/contacts/interactions/SmsInteraction;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smsto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method

.method public getInteractionDate()J
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/contacts/interactions/SmsInteraction;->getDate()Ljava/lang/Long;

    move-result-object v0

    .line 60
    .local v0, "date":Ljava/lang/Long;
    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getLocked()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "locked"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPerson()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "person"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "protocol"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRead()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "read"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getReplyPathPresent()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "reply_path_present"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSeen()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "seen"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getServiceCenter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "service_center"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "thread_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getViewBody(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/contacts/interactions/SmsInteraction;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewFooter(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/android/contacts/interactions/SmsInteraction;->getDate()Ljava/lang/Long;

    move-result-object v0

    .line 80
    .local v0, "date":Ljava/lang/Long;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    .line 81
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 80
    invoke-static {v2, v3, p1}, Lcom/android/contacts/interactions/ContactInteractionUtil;->formatDateStringFromTimestamp(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getViewHeader(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/contacts/interactions/SmsInteraction;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/SmsInteraction;->getType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v3, 0x7f09019e

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_0
    return-object v0
.end method

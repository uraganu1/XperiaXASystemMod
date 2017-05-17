.class public Lcom/android/contacts/interactions/CallLogInteraction;
.super Ljava/lang/Object;
.source "CallLogInteraction.java"

# interfaces
.implements Lcom/android/contacts/interactions/ContactInteraction;


# static fields
.field private static final CALL_LOG_ICON_RES:I = 0x7f02003c

.field private static final INCOMING_CALL_ARROW_ICON_RES:I = 0x7f020040

.field private static final MISSED_ARROW_ICON_RES:I = 0x7f020041

.field private static final OUTGOING_CALL_ARROW_ICON_RES:I = 0x7f020042

.field private static final URI_TARGET_PREFIX:Ljava/lang/String; = "tel:"

.field private static sBidiFormatter:Landroid/text/BidiFormatter;


# instance fields
.field private mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/interactions/CallLogInteraction;->sBidiFormatter:Landroid/text/BidiFormatter;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/contacts/interactions/CallLogInteraction;->mValues:Landroid/content/ContentValues;

    .line 62
    return-void
.end method

.method private getCallTypeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    const-string/jumbo v0, ""

    .line 195
    .local v0, "callType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 196
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteraction;->getType()Ljava/lang/Integer;

    move-result-object v2

    .line 197
    .local v2, "type":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 198
    return-object v0

    .line 200
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 211
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 202
    :pswitch_0
    const v3, 0x7f09019a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 205
    :pswitch_1
    const v3, 0x7f09019c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    :pswitch_2
    const v3, 0x7f09019b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getBodyIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCachedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCachedNumberLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "numberlabel"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCachedNumberType()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "numbertype"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/CallLogInteraction;->getCallTypeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/CallLogInteraction;->getViewFooter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/CallLogInteraction;->getViewHeader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    const-string/jumbo v2, ". "

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/CallLogInteraction;->getViewFooter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "callDetails":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 190
    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 189
    const v3, 0x7f09019d

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDate()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "date"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "duration"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getFooterIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "callArrow":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 115
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteraction;->getType()Ljava/lang/Integer;

    move-result-object v2

    .line 116
    .local v2, "type":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 117
    return-object v3

    .line 119
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 130
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    :pswitch_0
    const v3, 0x7f020040

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    .local v0, "callArrow":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 124
    .local v0, "callArrow":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    const v3, 0x7f020041

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "callArrow":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 127
    .local v0, "callArrow":Landroid/graphics/drawable/Drawable;
    :pswitch_2
    const v3, 0x7f020042

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "callArrow":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconResourceId()I
    .locals 1

    .prologue
    .line 218
    const v0, 0x7f02003c

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteraction;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "number":Ljava/lang/String;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method

.method public getInteractionDate()J
    .locals 4

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteraction;->getDate()Ljava/lang/Long;

    move-result-object v0

    .line 81
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

.method public getIsRead()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "is_read"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getLimitParamKey()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "limit"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getNew()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "new"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v2, p0, Lcom/android/contacts/interactions/CallLogInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v3, "number"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "number":Ljava/lang/String;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    .line 170
    :cond_0
    sget-object v1, Lcom/android/contacts/interactions/CallLogInteraction;->sBidiFormatter:Landroid/text/BidiFormatter;

    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v0, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNumberPresentation()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "presentation"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getOffsetParamKey()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "offset"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getViewBody(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteraction;->getCachedNumberType()Ljava/lang/Integer;

    move-result-object v0

    .line 87
    .local v0, "numberType":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 88
    return-object v1

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteraction;->getCachedNumberType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 91
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteraction;->getCachedNumberLabel()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v1, v2, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getViewFooter(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteraction;->getDate()Ljava/lang/Long;

    move-result-object v0

    .line 97
    .local v0, "date":Ljava/lang/Long;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 97
    invoke-static {v2, v3, p1}, Lcom/android/contacts/interactions/ContactInteractionUtil;->formatDateStringFromTimestamp(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getViewHeader(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteraction;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

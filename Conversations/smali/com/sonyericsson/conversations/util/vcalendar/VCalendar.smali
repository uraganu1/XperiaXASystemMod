.class public Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;
.super Ljava/lang/Object;
.source "VCalendar.java"


# instance fields
.field private mCurrentVObject:Lcom/sonyericsson/conversations/util/vcalendar/VObject;

.field private mDaylight:Ljava/lang/String;

.field private mGeo:Ljava/lang/String;

.field private mParsingOngoing:Z

.field private mPreviousTag:Ljava/lang/String;

.field private mProdId:Ljava/lang/String;

.field private mTimeZone:Ljava/lang/String;

.field private mVObjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/util/vcalendar/VObject;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mVObjectList:Ljava/util/List;

    .line 34
    iput-object v1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mCurrentVObject:Lcom/sonyericsson/conversations/util/vcalendar/VObject;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mParsingOngoing:Z

    .line 36
    iput-object v1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mVersion:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mTimeZone:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mProdId:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mGeo:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mDaylight:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private handleBegin(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 239
    const-string/jumbo v0, "VCALENDAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mVObjectList:Ljava/util/List;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mParsingOngoing:Z

    if-eqz v0, :cond_1

    .line 244
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;

    const-string/jumbo v1, "Trying to parse new object!"

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mVObjectList:Ljava/util/List;

    .line 242
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mParsingOngoing:Z

    .line 238
    :cond_2
    :goto_0
    return-void

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mCurrentVObject:Lcom/sonyericsson/conversations/util/vcalendar/VObject;

    if-eqz v0, :cond_4

    .line 248
    new-instance v0, Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;

    const-string/jumbo v1, "Previous object not closed!"

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_4
    const-string/jumbo v0, "VTODO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 251
    new-instance v0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mCurrentVObject:Lcom/sonyericsson/conversations/util/vcalendar/VObject;

    goto :goto_0

    .line 252
    :cond_5
    const-string/jumbo v0, "VEVENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    new-instance v0, Lcom/sonyericsson/conversations/util/vcalendar/VObject;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mCurrentVObject:Lcom/sonyericsson/conversations/util/vcalendar/VObject;

    goto :goto_0
.end method

.method private handleDaylight(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mDaylight:Ljava/lang/String;

    .line 197
    return-void
.end method

.method private handleEnd(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 210
    const-string/jumbo v0, "VCALENDAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mParsingOngoing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mCurrentVObject:Lcom/sonyericsson/conversations/util/vcalendar/VObject;

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mParsingOngoing:Z

    .line 209
    :goto_0
    return-void

    .line 214
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad state of vcalendar object! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_1
    const-string/jumbo v0, "VEVENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mParsingOngoing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mCurrentVObject:Lcom/sonyericsson/conversations/util/vcalendar/VObject;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mCurrentVObject:Lcom/sonyericsson/conversations/util/vcalendar/VObject;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->getObjectType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mVObjectList:Ljava/util/List;

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mCurrentVObject:Lcom/sonyericsson/conversations/util/vcalendar/VObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iput-object v2, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mCurrentVObject:Lcom/sonyericsson/conversations/util/vcalendar/VObject;

    goto :goto_0

    .line 222
    :cond_2
    new-instance v0, Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad state of vcalendar object! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_3
    const-string/jumbo v0, "VTODO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 225
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mParsingOngoing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mCurrentVObject:Lcom/sonyericsson/conversations/util/vcalendar/VObject;

    if-eqz v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mCurrentVObject:Lcom/sonyericsson/conversations/util/vcalendar/VObject;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->getObjectType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mVObjectList:Ljava/util/List;

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mCurrentVObject:Lcom/sonyericsson/conversations/util/vcalendar/VObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iput-object v2, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mCurrentVObject:Lcom/sonyericsson/conversations/util/vcalendar/VObject;

    goto :goto_0

    .line 230
    :cond_4
    new-instance v0, Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad state of vcalendar object! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_5
    new-instance v0, Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled object type! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleGeo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mGeo:Ljava/lang/String;

    .line 201
    return-void
.end method

.method private handleProdId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mProdId:Ljava/lang/String;

    .line 189
    return-void
.end method

.method private handleTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;
        }
    .end annotation

    .prologue
    .line 168
    const-string/jumbo v0, "BEGIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->handleBegin(Ljava/lang/String;)V

    .line 167
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string/jumbo v0, "END"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->handleEnd(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_1
    const-string/jumbo v0, "VERSION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->handleVersion(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_2
    const-string/jumbo v0, "GEO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->handleGeo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_3
    const-string/jumbo v0, "DAYLIGHT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->handleDaylight(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_4
    const-string/jumbo v0, "TZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->handleTimezone(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_5
    const-string/jumbo v0, "PRODID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 181
    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->handleProdId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_6
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mParsingOngoing:Z

    if-eqz v0, :cond_7

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mCurrentVObject:Lcom/sonyericsson/conversations/util/vcalendar/VObject;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->handleTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_7
    new-instance v0, Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad state of vcalendar object! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleTimezone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mTimeZone:Ljava/lang/String;

    .line 193
    return-void
.end method

.method private handleVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mVersion:Ljava/lang/String;

    .line 205
    return-void
.end method

.method private parseRow(Ljava/lang/String;)V
    .locals 9
    .param p1, "row"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 148
    const-string/jumbo v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 149
    .local v0, "colonIndex":I
    if-eq v0, v6, :cond_1

    .line 150
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "tag":Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "content":Ljava/lang/String;
    const/4 v2, 0x0

    .line 153
    .local v2, "parameters":Ljava/lang/String;
    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 154
    .local v3, "semiColonIndex":I
    if-le v3, v6, :cond_0

    .line 155
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "parameters":Ljava/lang/String;
    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 158
    .end local v2    # "parameters":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v4, v2, v1}, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->handleTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iput-object v4, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mPreviousTag:Ljava/lang/String;

    .line 147
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "semiColonIndex":I
    .end local v4    # "tag":Ljava/lang/String;
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mPreviousTag:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 161
    iget-object v5, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mPreviousTag:Ljava/lang/String;

    invoke-direct {p0, v5, v8, p1}, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->handleTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    new-instance v5, Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Malformed row found when parsing file, row = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private parseSummaryOrDescription(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "followingLine":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "trimmedLine":Ljava/lang/String;
    const-string/jumbo v3, "="

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 122
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 123
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->parseRow(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonyericsson/conversations/util/vcalendar/ParsingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    :goto_1
    move-object p2, v1

    goto :goto_0

    .line 104
    .end local v2    # "trimmedLine":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->parseRow(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonyericsson/conversations/util/vcalendar/ParsingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :cond_3
    :goto_2
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;
    sget-boolean v3, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignored the SUMMARY/DESCRIPTION row due to bad content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 109
    :cond_4
    const-string/jumbo v3, "Error when parsing SUMMARY/DESCRIPTION in VCalendar"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 129
    .end local v0    # "e":Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;
    .restart local v2    # "trimmedLine":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 130
    .restart local v0    # "e":Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;
    sget-boolean v3, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignored the SUMMARY/DESCRIPTION row due to bad content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_5
    const-string/jumbo v3, "Ignoring SUMMARY/DESCRIPTION of VCalendar due to bad content."

    .line 135
    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getvObjectList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/util/vcalendar/VObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->mVObjectList:Ljava/util/List;

    return-object v0
.end method

.method public parse(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 51
    if-nez p2, :cond_0

    .line 52
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Input value is null!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 55
    :cond_0
    const/4 v4, 0x0

    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    .line 56
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 57
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 56
    invoke-direct {v7, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 55
    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 58
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_7

    .line 60
    const-string/jumbo v3, ""

    .line 61
    .local v3, "nextUnparsedLine":Ljava/lang/String;
    const-string/jumbo v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, "colonIndex":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "tag":Ljava/lang/String;
    :goto_1
    const-string/jumbo v7, "SUMMARY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 64
    const-string/jumbo v7, "DESCRIPTION"

    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 65
    :cond_1
    invoke-direct {p0, v5, v2}, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->parseSummaryOrDescription(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 62
    .end local v6    # "tag":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v6    # "tag":Ljava/lang/String;
    goto :goto_1

    .line 68
    :cond_3
    :try_start_2
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->parseRow(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sonyericsson/conversations/util/vcalendar/ParsingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;
    :try_start_3
    sget-boolean v7, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ignored the row due to bad content: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 80
    .end local v0    # "colonIndex":I
    .end local v1    # "e":Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "nextUnparsedLine":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_3
    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_4
    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_5
    if-eqz v8, :cond_a

    throw v8

    .line 73
    .restart local v0    # "colonIndex":I
    .restart local v1    # "e":Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "nextUnparsedLine":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "tag":Ljava/lang/String;
    :cond_5
    :try_start_6
    const-string/jumbo v7, "Error when parsing row in VCalendar"

    invoke-static {v7}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 80
    .end local v0    # "colonIndex":I
    .end local v1    # "e":Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "nextUnparsedLine":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 78
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "colonIndex":I
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "nextUnparsedLine":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "tag":Ljava/lang/String;
    :cond_6
    move-object v2, v3

    goto :goto_0

    .line 80
    .end local v0    # "colonIndex":I
    .end local v3    # "nextUnparsedLine":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    :cond_7
    if-eqz v5, :cond_8

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :cond_8
    :goto_6
    if-eqz v8, :cond_b

    throw v8

    :catch_2
    move-exception v8

    goto :goto_6

    .end local v2    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v9

    if-nez v8, :cond_9

    move-object v8, v9

    goto :goto_5

    :cond_9
    if-eq v8, v9, :cond_4

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_a
    throw v7

    .line 50
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_b
    return-void

    .line 80
    .end local v2    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v7

    goto :goto_4

    :catch_4
    move-exception v7

    goto :goto_3
.end method

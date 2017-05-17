.class public Lcom/sonyericsson/conversations/util/vcalendar/Attendee;
.super Ljava/lang/Object;
.source "Attendee.java"


# instance fields
.field private mEmail:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mParams:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/Attendee;->mParams:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/Attendee;->mName:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/Attendee;->mEmail:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public parseParams(Ljava/lang/String;)V
    .locals 0
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/vcalendar/Attendee;->mParams:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string/jumbo v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const-string/jumbo v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 21
    const-string/jumbo v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 20
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/Attendee;->mEmail:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/vcalendar/Attendee;->mName:Ljava/lang/String;

    .line 18
    :goto_0
    return-void

    .line 24
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/util/vcalendar/VCalendarConstants;->ALFA:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/vcalendar/Attendee;->mEmail:Ljava/lang/String;

    goto :goto_0

    .line 27
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/vcalendar/Attendee;->mName:Ljava/lang/String;

    goto :goto_0
.end method

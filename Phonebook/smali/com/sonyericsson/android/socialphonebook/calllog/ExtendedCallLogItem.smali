.class public Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;
.super Ljava/lang/Object;
.source "ExtendedCallLogItem.java"


# instance fields
.field private mExtensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->mExtensions:Ljava/util/Map;

    .line 29
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->mExtensions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->mExtensions:Ljava/util/Map;

    const-string/jumbo v1, "application/vnd.sonymobile.holla.callerlocation"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 100
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->mExtensions:Ljava/util/Map;

    const-string/jumbo v1, "application/vnd.sonymobile.holla.callsubject"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasCallItems()Z
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->mExtensions:Ljava/util/Map;

    const-string/jumbo v1, "application/vnd.sonymobile.holla.hasitems"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasLocation()Z
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->mExtensions:Ljava/util/Map;

    const-string/jumbo v1, "application/vnd.sonymobile.holla.callerlocation"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasSubject()Z
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->mExtensions:Ljava/util/Map;

    const-string/jumbo v1, "application/vnd.sonymobile.holla.callsubject"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isConferenceCall()Z
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->mExtensions:Ljava/util/Map;

    const-string/jumbo v1, "application/vnd.sonymobile.conferencecall"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHdVoice()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->mExtensions:Ljava/util/Map;

    const-string/jumbo v1, "application/vnd.sonymobile.highdefinitioncall"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUrgentCall()Z
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->mExtensions:Ljava/util/Map;

    const-string/jumbo v1, "application/vnd.sonymobile.holla.urgentcall"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVideoCall()Z
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->mExtensions:Ljava/util/Map;

    const-string/jumbo v1, "application/vnd.sonymobile.videocall"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

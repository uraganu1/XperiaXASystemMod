.class public Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;
.super Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;
.source "RichCallApiService.java"


# static fields
.field private static geolocSharingSessions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession;",
            ">;"
        }
    .end annotation
.end field

.field private static imageSharingSessions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;",
            ">;"
        }
    .end annotation
.end field

.field private static logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private static videoSharingSessions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->imageSharingSessions:Ljava/util/Hashtable;

    .line 79
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->videoSharingSessions:Ljava/util/Hashtable;

    .line 84
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->geolocSharingSessions:Ljava/util/Hashtable;

    const-class v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;-><init>()V

    .line 95
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Rich call API is loaded"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static addGeolocSharingSession(Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;)V
    .locals 3
    .param p0, "session"    # Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;

    .prologue
    .line 167
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    :goto_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->geolocSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void

    .line 168
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Add a geoloc sharing session in the list (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->geolocSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static addImageSharingSession(Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;)V
    .locals 3
    .param p0, "session"    # Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;

    .prologue
    .line 115
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    :goto_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->imageSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void

    .line 116
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Add an image sharing session in the list (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->imageSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static addVideoSharingSession(Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;)V
    .locals 3
    .param p0, "session"    # Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;

    .prologue
    .line 141
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    :goto_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void

    .line 142
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Add a video sharing session in the list (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->imageSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 106
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 107
    return-void
.end method

.method protected static removeGeolocSharingSession(Ljava/lang/String;)V
    .locals 3
    .param p0, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 180
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    :goto_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->geolocSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void

    .line 181
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove a geoloc sharing session from the list (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->geolocSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static removeImageSharingSession(Ljava/lang/String;)V
    .locals 3
    .param p0, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->imageSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void

    .line 129
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove an image sharing session from the list (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->imageSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static removeVideoSharingSession(Ljava/lang/String;)V
    .locals 3
    .param p0, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 154
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    :goto_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void

    .line 155
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove a video sharing session from the list (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCallState()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 753
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 758
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 761
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 764
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->getCallState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 754
    :cond_0
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Get call state"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 764
    :catch_0
    move-exception v0

    .line 766
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 769
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 767
    :cond_1
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Unexpected error"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getGeolocSharingSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 582
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 590
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 593
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->geolocSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession;

    return-object v0

    .line 583
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Get geoloc sharing session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getImageSharingSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 439
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 447
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 450
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->imageSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;

    return-object v0

    .line 440
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Get image sharing session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getImageSharingSessionsWith(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 461
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_0

    .line 466
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 469
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 472
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/Core;->getRichcallService()Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getCShSessions(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 474
    .local v2, "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    const/4 v1, 0x0

    .line 475
    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lt v1, v6, :cond_1

    .line 482
    return-object v3

    .line 462
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_0
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Get image sharing sessions with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 476
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;

    .line 477
    .local v4, "session":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->imageSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;

    .line 478
    .local v5, "sessionApi":Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;
    if-nez v5, :cond_2

    .line 475
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 479
    :cond_2
    invoke-interface {v5}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 482
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v4    # "session":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
    .end local v5    # "sessionApi":Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_3

    .line 487
    :goto_3
    new-instance v6, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 485
    :cond_3
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Unexpected error"

    invoke-virtual {v6, v7, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public getRemotePhoneNumber()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 194
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 202
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 205
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->getRemoteParty()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 195
    :cond_0
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Get remote phone number"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_1
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Unexpected error"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getVideoSharingSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 298
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 306
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 309
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession;

    return-object v0

    .line 299
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Get video sharing session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getVideoSharingSessionsWith(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 320
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_0

    .line 325
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 328
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 331
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/Core;->getRichcallService()Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getCShSessions(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 333
    .local v2, "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    const/4 v1, 0x0

    .line 334
    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lt v1, v6, :cond_1

    .line 341
    return-object v3

    .line 321
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_0
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Get video sharing sessions with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;

    .line 336
    .local v4, "session":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession;

    .line 337
    .local v5, "sessionApi":Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession;
    if-nez v5, :cond_2

    .line 334
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 338
    :cond_2
    invoke-interface {v5}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 341
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v4    # "session":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
    .end local v5    # "sessionApi":Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession;
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_3

    .line 346
    :goto_3
    new-instance v6, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 344
    :cond_3
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Unexpected error"

    invoke-virtual {v6, v7, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public initiateGeolocSharing(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession;
    .locals 13
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "geoloc"    # Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 501
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 509
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testIms()V

    .line 513
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v10

    .line 514
    .local v10, "msgId":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v10}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildGeolocDocument(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 516
    .local v9, "geolocDoc":Ljava/lang/String;
    new-instance v7, Lcom/sonymobile/rcs/core/content/GeolocContent;

    const-string/jumbo v1, "geoloc.xml"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v7, v1, v2, v3, v4}, Lcom/sonymobile/rcs/core/content/GeolocContent;-><init>(Ljava/lang/String;J[B)V

    .line 520
    .local v7, "content":Lcom/sonymobile/rcs/core/content/MmContent;
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getRichcallService()Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    move-result-object v1

    invoke-virtual {v1, p1, v7, p2}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->initiateGeolocSharingSession(Ljava/lang/String;Lcom/sonymobile/rcs/core/content/MmContent;Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    move-result-object v11

    .line 524
    .local v11, "session":Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v0

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->addCall(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/content/MmContent;IZ)Landroid/net/Uri;

    .line 529
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;ZLjava/lang/String;)V

    .line 530
    .local v0, "geolocMsg":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addOutgoingGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;)V

    .line 533
    new-instance v12, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;

    invoke-direct {v12, v11}, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;)V

    .line 534
    .local v12, "sessionApi":Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;
    invoke-static {v12}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->addGeolocSharingSession(Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    return-object v12

    .line 502
    .end local v0    # "geolocMsg":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
    .end local v7    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v9    # "geolocDoc":Ljava/lang/String;
    .end local v10    # "msgId":Ljava/lang/String;
    .end local v11    # "session":Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;
    .end local v12    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;
    :cond_0
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Initiate a geoloc sharing session with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :catch_0
    move-exception v8

    .line 537
    .local v8, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 540
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    :cond_1
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Unexpected error"

    invoke-virtual {v1, v2, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public initiateImageSharing(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;
    .locals 11
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "fileUri"    # Landroid/net/Uri;
    .param p3, "thumbnail"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 394
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 402
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testIms()V

    .line 406
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromUri(Landroid/net/Uri;JLjava/lang/String;)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v7

    .line 411
    .local v7, "content":Lcom/sonymobile/rcs/core/content/MmContent;
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getRichcallService()Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    move-result-object v0

    invoke-virtual {v0, p1, v7, p3}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->initiateImageSharingSession(Ljava/lang/String;Lcom/sonymobile/rcs/core/content/MmContent;Z)Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    move-result-object v9

    .line 415
    .local v9, "session":Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v0

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->addCall(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/content/MmContent;IZ)Landroid/net/Uri;

    .line 420
    new-instance v10, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;

    invoke-direct {v10, v9}, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;)V

    .line 421
    .local v10, "sessionApi":Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;
    invoke-static {v10}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->addImageSharingSession(Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    return-object v10

    .line 395
    .end local v7    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v9    # "session":Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;
    .end local v10    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Initiate an image sharing session with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :catch_0
    move-exception v8

    .line 424
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    :goto_1
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_1
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Unexpected error"

    invoke-virtual {v0, v1, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public initiateLiveVideoSharing(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession;
    .locals 10
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "player"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 258
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 266
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testIms()V

    .line 270
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getRichcallService()Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->initiateLiveVideoSharingSession(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    move-result-object v8

    .line 274
    .local v8, "session":Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v0

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->addCall(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/content/MmContent;IZ)Landroid/net/Uri;

    .line 279
    new-instance v9, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;

    invoke-direct {v9, v8}, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)V

    .line 280
    .local v9, "sessionApi":Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;
    invoke-static {v9}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->addVideoSharingSession(Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    return-object v9

    .line 259
    .end local v8    # "session":Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;
    .end local v9    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Initiate a live video session with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :catch_0
    move-exception v7

    .line 283
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    :goto_1
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Unexpected error"

    invoke-virtual {v0, v1, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public isOutgoingImageShareOngoing()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 679
    sget-object v5, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 682
    :goto_0
    const/4 v4, 0x0

    .line 684
    .local v4, "result":Z
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 687
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testIms()V

    .line 690
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/Core;->getRichcallService()Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getCShSessions()Ljava/util/Vector;

    move-result-object v1

    .local v1, "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    const/4 v3, 0x0

    .line 692
    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lt v3, v5, :cond_1

    .line 698
    return v4

    .line 680
    .end local v1    # "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .end local v3    # "i":I
    .end local v4    # "result":Z
    :cond_0
    sget-object v5, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Check if there is ongoing outgoing image session"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 693
    .restart local v1    # "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .restart local v3    # "i":I
    .restart local v4    # "result":Z
    :cond_1
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;

    .line 694
    .local v0, "currentSession":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
    instance-of v5, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/OriginatingImageTransferSession;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v5, :cond_2

    .line 692
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 695
    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 698
    .end local v0    # "currentSession":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
    .end local v1    # "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 700
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public isOutgoingVideoShareOngoing()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 646
    sget-object v5, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 649
    :goto_0
    const/4 v4, 0x0

    .line 651
    .local v4, "result":Z
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 654
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testIms()V

    .line 657
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/Core;->getRichcallService()Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getCShSessions()Ljava/util/Vector;

    move-result-object v1

    .local v1, "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    const/4 v3, 0x0

    .line 659
    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lt v3, v5, :cond_1

    .line 665
    return v4

    .line 647
    .end local v1    # "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .end local v3    # "i":I
    .end local v4    # "result":Z
    :cond_0
    sget-object v5, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Check if there is ongoing outgoing video session"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 660
    .restart local v1    # "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .restart local v3    # "i":I
    .restart local v4    # "result":Z
    :cond_1
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;

    .line 661
    .local v0, "currentSession":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
    instance-of v5, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingLiveVideoStreamingSession;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v5, :cond_2

    .line 659
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 662
    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 665
    .end local v0    # "currentSession":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
    .end local v1    # "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 667
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public receiveGeolocSharingInvitation(Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;)V
    .locals 9
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;

    .prologue
    const/4 v5, 0x0

    .line 550
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, "number":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->addCall(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/content/MmContent;IZ)Landroid/net/Uri;

    .line 562
    new-instance v8, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;

    invoke-direct {v8, p1}, Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;)V

    .line 563
    .local v8, "sessionApi":Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;
    invoke-static {v8}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->addGeolocSharingSession(Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;)V

    .line 566
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "com.sonymobile.rcs.richcall.GEOLOC_SHARING_INVITATION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "contact"

    .line 567
    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "contactDisplayname"

    .line 568
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "sessionId"

    .line 569
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 570
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 571
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 572
    return-void

    .line 551
    .end local v1    # "number":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/richcall/GeolocSharingSession;
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Receive geoloc sharing invitation from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public receiveImageSharingInvitation(Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;)V
    .locals 9
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;

    .prologue
    const/4 v5, 0x0

    .line 356
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "number":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->addCall(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/content/MmContent;IZ)Landroid/net/Uri;

    .line 368
    new-instance v8, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;

    invoke-direct {v8, p1}, Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;)V

    .line 369
    .local v8, "sessionApi":Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;
    invoke-static {v8}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->addImageSharingSession(Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;)V

    .line 372
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "com.sonymobile.rcs.richcall.IMAGE_SHARING_INVITATION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "contact"

    .line 373
    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "contactDisplayname"

    .line 374
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "sessionId"

    .line 375
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "fileUri"

    .line 376
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "filesize"

    .line 377
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v2

    invoke-virtual {v7, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v0, "filetype"

    .line 378
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "thumbnail"

    .line 379
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getThumbnail()[B

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 380
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 381
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 382
    return-void

    .line 357
    .end local v1    # "number":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/richcall/ImageSharingSession;
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Receive image sharing invitation from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public receiveVideoSharingInvitation(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)V
    .locals 9
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 220
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/content/VideoContent;

    .line 229
    .local v4, "content":Lcom/sonymobile/rcs/core/content/VideoContent;
    invoke-static {}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->addCall(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/content/MmContent;IZ)Landroid/net/Uri;

    .line 233
    new-instance v8, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;

    invoke-direct {v8, p1}, Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)V

    .line 234
    .local v8, "sessionApi":Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;
    invoke-static {v8}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->addVideoSharingSession(Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;)V

    .line 237
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "com.sonymobile.rcs.richcall.VIDEO_SHARING_INVITATION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "contact"

    .line 238
    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "contactDisplayname"

    .line 239
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "sessionId"

    .line 240
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "videotype"

    .line 241
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/content/VideoContent;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "videowidth"

    .line 242
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/content/VideoContent;->getWidth()I

    move-result v2

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "videoheight"

    .line 243
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/content/VideoContent;->getHeight()I

    move-result v2

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "isLive"

    .line 244
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/content/VideoContent;->isLive()Z

    move-result v2

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 245
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 246
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 247
    return-void

    .line 221
    .end local v1    # "number":Ljava/lang/String;
    .end local v4    # "content":Lcom/sonymobile/rcs/core/content/VideoContent;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/richcall/VideoSharingSession;
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Receive video sharing invitation from "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setCallHold(Z)V
    .locals 3
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 624
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 632
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 635
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->setCallHold(Z)V

    .line 636
    return-void

    .line 625
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set call hold to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCallState(I)V
    .locals 3
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 733
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 741
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 744
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->setCallState(I)V

    .line 745
    return-void

    .line 734
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set call state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMultiPartyCall(Z)V
    .locals 3
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 603
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 611
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 614
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->setMultiPartyCall(Z)V

    .line 615
    return-void

    .line 604
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set multiparty call to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRemoteParty(Ljava/lang/String;)V
    .locals 3
    .param p1, "remoteContact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 711
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 719
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 722
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->setRemoteParty(Ljava/lang/String;)V

    .line 723
    return-void

    .line 712
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set remote contact "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRichcallPermissionStatus(Z)V
    .locals 3
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 780
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 785
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 788
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 791
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->setRichcallPermissionStatus(Z)V

    .line 792
    return-void

    .line 781
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set richcall permission state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

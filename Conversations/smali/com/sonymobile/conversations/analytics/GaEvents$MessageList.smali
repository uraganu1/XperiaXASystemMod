.class public final Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;
.super Ljava/lang/Object;
.source "GaEvents.java"


# static fields
.field private static final sAttachmentMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/conversations/ui/AddMediaType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->sAttachmentMapping:Ljava/util/HashMap;

    .line 40
    sget-object v0, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->sAttachmentMapping:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_PICTURE:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v2, "ADD_PICTURE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->sAttachmentMapping:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/conversations/ui/AddMediaType;->CAPTURE_PHOTO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v2, "CAPTURE_PHOTO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->sAttachmentMapping:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_VIDEO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v2, "ADD_VIDEO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->sAttachmentMapping:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/conversations/ui/AddMediaType;->CAPTURE_VIDEO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v2, "CAPTURE_VIDEO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->sAttachmentMapping:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_AUDIO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v2, "ADD_AUDIO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->sAttachmentMapping:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/conversations/ui/AddMediaType;->GET_LOCATION:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v2, "GET_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->sAttachmentMapping:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_SKETCH:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v2, "ADD_SKETCH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->sAttachmentMapping:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/conversations/ui/AddMediaType;->SEND_CONTACT:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v2, "SEND_CONTACT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->sAttachmentMapping:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_NOTES:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v2, "ADD_NOTES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->sAttachmentMapping:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_VCALENDAR:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v2, "ADD_VCALENDAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->sAttachmentMapping:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_FILE:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v2, "ADD_FILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->sAttachmentMapping:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_STICKER:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v2, "ADD_STICKER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->sAttachmentMapping:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/conversations/ui/AddMediaType;->STICKER_STORE:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 53
    const-string/jumbo v2, "STICKER_STORE_ENTRY"

    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->sAttachmentMapping:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/conversations/ui/AddMediaType;->STICKER_STORE_BANNER:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 55
    const-string/jumbo v2, "STICKER_STORE_RECENTS_BANNER"

    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->sAttachmentMapping:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/conversations/ui/AddMediaType;->RECORD_AUDIO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v2, "RECORD_AUDIO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttachmentSelectedLabel(Lcom/sonyericsson/conversations/ui/AddMediaType;)Ljava/lang/String;
    .locals 2
    .param p0, "attachmentType"    # Lcom/sonyericsson/conversations/ui/AddMediaType;

    .prologue
    .line 93
    sget-object v1, Lcom/sonymobile/conversations/analytics/GaEvents$MessageList;->sAttachmentMapping:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    .local v0, "label":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "label":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "label":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "UNKNOWN"

    goto :goto_0
.end method

.class public Lcom/sonyericsson/android/socialphonebook/CallDetail;
.super Ljava/lang/Object;
.source "CallDetail.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/CallDetail$1;
    }
.end annotation


# static fields
.field public static final CALL_LOG_DETAIL_EXTRA_KEY_CONFERENCE_CALL:Ljava/lang/String; = "callLogConferenceCallItem"

.field public static final CALL_LOG_DETAIL_EXTRA_KEY_FIRST_ITEM:Ljava/lang/String; = "callLogFirstItem"

.field public static final CALL_LOG_DETAIL_EXTRA_KEY_NAME:Ljava/lang/String; = "name"

.field public static final CALL_LOG_DETAIL_EXTRA_KEY_NUMBER:Ljava/lang/String; = "number"

.field public static final CALL_LOG_DETAIL_EXTRA_KEY_NUMBER_PRESENTATION:Ljava/lang/String; = "numberPresentation"

.field public static final CALL_LOG_DETAIL_EXTRA_KEY_PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final CALL_LOG_DETAIL_VOICEMAILREAD:Ljava/lang/String; = "voicemailread"

.field public static final CALL_LOG_DETAIL_VOICEMAILURI:Ljava/lang/String; = "voicemailuri"

.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/CallDetail;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIMETYPE_EXTRACTED_CALL_INFORMATION:Ljava/lang/String; = "vnd.android.cursor.item/vnd.sonyericsson.extracted_call_information"


# instance fields
.field public callInformationExist:Z

.field public callUri:Landroid/net/Uri;

.field public callsIds:[I

.field public isFirstItemInCallLogList:Z

.field public isRedialed:Z

.field public isVoicemailPlaybackInit:Z

.field public isVoicemailPlaybackThroughSpeakerPhone:Z

.field public isVoicemailPlaying:Z

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public protocol:Ljava/lang/String;

.field public sipName:Ljava/lang/String;

.field public voicemailPlaybackPostition:I

.field public voicemailStatus:I

.field public voicemailUriString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/CallDetail$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/CallDetail$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callInformationExist:Z

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->numberPresentation:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->sipName:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->protocol:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailStatus:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isVoicemailPlaying:Z

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isVoicemailPlaybackInit:Z

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailPlaybackPostition:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isVoicemailPlaybackThroughSpeakerPhone:Z

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isFirstItemInCallLogList:Z

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    :goto_5
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isRedialed:Z

    .line 133
    return-void

    :cond_0
    move v0, v2

    .line 134
    goto :goto_0

    :cond_1
    move v0, v2

    .line 143
    goto :goto_1

    :cond_2
    move v0, v2

    .line 144
    goto :goto_2

    :cond_3
    move v0, v2

    .line 146
    goto :goto_3

    :cond_4
    move v0, v2

    .line 147
    goto :goto_4

    :cond_5
    move v1, v2

    .line 148
    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/android/socialphonebook/CallDetail;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/CallDetail;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 243
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExtractedDataEquals(Lcom/sonyericsson/android/socialphonebook/CallDetail;)Z
    .locals 3
    .param p1, "newCallDetail"    # Lcom/sonyericsson/android/socialphonebook/CallDetail;

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/CallDetail;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    return v2

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/CallDetail;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    return v2

    .line 213
    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->numberPresentation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->numberPresentation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/CallDetail;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    return v2

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->protocol:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->protocol:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/CallDetail;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 218
    return v2

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I

    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 222
    return v2

    .line 225
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private isVoicemailDataEquals(Lcom/sonyericsson/android/socialphonebook/CallDetail;)Z
    .locals 4
    .param p1, "newCallDetail"    # Lcom/sonyericsson/android/socialphonebook/CallDetail;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    .line 230
    iget-object v3, p1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    .line 229
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 229
    :goto_0
    if-nez v0, :cond_3

    .line 232
    return v2

    :cond_1
    move v0, v1

    .line 229
    goto :goto_0

    :cond_2
    move v0, v2

    .line 231
    goto :goto_0

    .line 235
    :cond_3
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailStatus:I

    iget v3, p1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailStatus:I

    if-eq v0, v3, :cond_4

    .line 236
    return v2

    .line 239
    :cond_4
    return v1
.end method

.method public static parseIntent(Landroid/content/Intent;)Lcom/sonyericsson/android/socialphonebook/CallDetail;
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 162
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/CallDetail;-><init>()V

    .line 163
    .local v1, "callDetail":Lcom/sonyericsson/android/socialphonebook/CallDetail;
    const-string/jumbo v3, "vnd.android.cursor.item/vnd.sonyericsson.extracted_call_information"

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callInformationExist:Z

    .line 165
    const-string/jumbo v3, "name"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;

    .line 166
    const-string/jumbo v3, "number"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    .line 168
    const-string/jumbo v3, "numberPresentation"

    const/4 v4, 0x1

    .line 167
    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->numberPresentation:I

    .line 169
    const-string/jumbo v3, "protocol"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->protocol:Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callUri:Landroid/net/Uri;

    .line 172
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 173
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 174
    .local v2, "callItemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    if-eqz v0, :cond_0

    .line 176
    const-string/jumbo v3, "call_items"

    .line 175
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "callItemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    check-cast v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;

    .line 177
    .local v2, "callItemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getIds()[I

    move-result-object v3

    iput-object v3, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I

    .line 181
    .end local v2    # "callItemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    :cond_0
    const-string/jumbo v3, "voicemailuri"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    .line 182
    iget-object v3, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 183
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getVoicemailUri()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    .line 186
    :cond_1
    const-string/jumbo v3, "voicemailread"

    invoke-virtual {p0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailStatus:I

    .line 188
    const-string/jumbo v3, "callLogFirstItem"

    .line 187
    invoke-virtual {p0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isFirstItemInCallLogList:Z

    .line 190
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public hasVoicemail()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDataValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callInformationExist:Z

    if-nez v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->numberPresentation:I

    if-eq v2, v0, :cond_4

    .line 199
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I

    array-length v2, v2

    if-eqz v2, :cond_3

    .line 198
    :goto_1
    return v0

    :cond_3
    move v0, v1

    .line 199
    goto :goto_1

    :cond_4
    move v0, v1

    .line 198
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callInformationExist:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->numberPresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->sipName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->protocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 109
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isVoicemailPlaying:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isVoicemailPlaybackInit:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailPlaybackPostition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isVoicemailPlaybackThroughSpeakerPhone:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isFirstItemInCallLogList:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isRedialed:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void

    :cond_0
    move v0, v2

    .line 100
    goto :goto_0

    :cond_1
    move v0, v2

    .line 109
    goto :goto_1

    :cond_2
    move v0, v2

    .line 110
    goto :goto_2

    :cond_3
    move v0, v2

    .line 112
    goto :goto_3

    :cond_4
    move v0, v2

    .line 113
    goto :goto_4

    :cond_5
    move v1, v2

    .line 114
    goto :goto_5
.end method

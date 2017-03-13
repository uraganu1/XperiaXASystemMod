.class public final Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;,
        Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field alert:Landroid/net/Uri;

.field daysOfWeek:Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;

.field enabled:Z

.field hour:I

.field id:I

.field label:Ljava/lang/String;

.field minutes:I

.field silent:Z

.field time:J

.field vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$1;

    invoke-direct {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$1;-><init>()V

    .line 41
    sput-object v0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->id:I

    .line 233
    iput v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->hour:I

    .line 234
    iput v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->minutes:I

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->vibrate:Z

    .line 236
    new-instance v0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;

    invoke-direct {v0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->daysOfWeek:Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;

    .line 237
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->label:Ljava/lang/String;

    .line 238
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->alert:Landroid/net/Uri;

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->id:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->enabled:Z

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->hour:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->minutes:I

    .line 222
    new-instance v0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->daysOfWeek:Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->time:J

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->vibrate:Z

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->label:Ljava/lang/String;

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->alert:Landroid/net/Uri;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->silent:Z

    .line 217
    return-void

    :cond_0
    move v0, v2

    .line 219
    goto :goto_0

    :cond_1
    move v0, v2

    .line 224
    goto :goto_1

    :cond_2
    move v1, v2

    .line 227
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 255
    instance-of v2, p1, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    .line 256
    check-cast v0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;

    .line 257
    .local v0, "other":Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;
    iget v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->id:I

    iget v3, v0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->id:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Alarm{alert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->alert:Landroid/net/Uri;

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    const-string/jumbo v1, ", id="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    iget v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->id:I

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    const-string/jumbo v1, ", enabled="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    iget-boolean v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->enabled:Z

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    const-string/jumbo v1, ", hour="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    iget v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->hour:I

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    const-string/jumbo v1, ", minutes="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    iget v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->minutes:I

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    const-string/jumbo v1, ", daysOfWeek="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->daysOfWeek:Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    const-string/jumbo v1, ", time="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    iget-wide v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->time:J

    .line 176
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    const-string/jumbo v1, ", vibrate="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    iget-boolean v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->vibrate:Z

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    const-string/jumbo v1, ", label=\'"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->label:Ljava/lang/String;

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    const/16 v1, 0x27

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    const-string/jumbo v1, ", silent="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    iget-boolean v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->silent:Z

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    const/16 v1, 0x7d

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-boolean v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->enabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->minutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->daysOfWeek:Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$DaysOfWeek;->getCoded()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-wide v4, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->time:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-boolean v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->vibrate:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 66
    iget-boolean v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;->silent:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return-void

    :cond_0
    move v0, v2

    .line 58
    goto :goto_0

    :cond_1
    move v0, v2

    .line 63
    goto :goto_1

    :cond_2
    move v1, v2

    .line 66
    goto :goto_2
.end method

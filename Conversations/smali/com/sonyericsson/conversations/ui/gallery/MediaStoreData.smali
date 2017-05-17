.class public Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;
.super Ljava/lang/Object;
.source "MediaStoreData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;,
        Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDateTaken:J

.field private final mMimeType:Ljava/lang/String;

.field private final mRowId:J

.field private final mType:Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$1;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    return-void
.end method

.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;J)V
    .locals 0
    .param p1, "rowId"    # J
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;
    .param p6, "dateTaken"    # J

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mRowId:J

    .line 56
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mUri:Landroid/net/Uri;

    .line 57
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mMimeType:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mType:Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    .line 59
    iput-wide p6, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mDateTaken:J

    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mRowId:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mUri:Landroid/net/Uri;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mMimeType:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mType:Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mDateTaken:J

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getmDateTaken()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mDateTaken:J

    return-wide v0
.end method

.method public getmType()Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mType:Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    return-object v0
.end method

.method public getmUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MediaStoreData{mRowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mRowId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mMimeType:Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const-string/jumbo v1, ", mType="

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mType:Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;->name()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const-string/jumbo v1, ", mDateTaken="

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mDateTaken:J

    .line 87
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const/16 v1, 0x7d

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mRowId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mType:Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->mDateTaken:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    return-void
.end method

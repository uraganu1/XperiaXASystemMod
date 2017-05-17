.class public Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
.super Ljava/lang/Object;
.source "RecipientItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Ljava/lang/String;

.field private mName:Ljava/lang/CharSequence;

.field mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mUri:Landroid/net/Uri;

    .line 41
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mName:Ljava/lang/CharSequence;

    .line 42
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mData:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mUri:Landroid/net/Uri;

    .line 99
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mName:Ljava/lang/CharSequence;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mData:Ljava/lang/String;

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mName:Ljava/lang/CharSequence;

    .line 36
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mData:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    if-eqz p1, :cond_4

    instance-of v3, p1, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 48
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    .line 49
    .local v0, "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->hashCode()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 50
    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mName:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mName:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 51
    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mData:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mData:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 52
    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    :cond_0
    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_2

    .line 49
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 53
    goto :goto_0

    :cond_3
    move v1, v2

    .line 49
    goto :goto_0

    .line 55
    .end local v0    # "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    :cond_4
    return v2
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 60
    const/16 v0, 0x1f

    .line 62
    .local v0, "prime":I
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mData:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 63
    .local v1, "result":I
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mName:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 64
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mUri:Landroid/net/Uri;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 65
    return v1

    .line 62
    .end local v1    # "result":I
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 63
    .restart local v1    # "result":I
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 64
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mName:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return-void
.end method

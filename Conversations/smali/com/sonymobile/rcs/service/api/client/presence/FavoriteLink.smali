.class public Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;
.super Ljava/lang/Object;
.source "FavoriteLink.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private link:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink$1;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink$1;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->link:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->name:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->name:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->link:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->link:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->name:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->link:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "link"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->link:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->name:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->name:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->link:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    return v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->link:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return-void
.end method

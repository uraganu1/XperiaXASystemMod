.class Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VCardFile"
.end annotation


# instance fields
.field private mLastModified:J

.field private mName:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "lastModified"    # J

    .prologue
    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;->mName:Ljava/lang/String;

    .line 1027
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;->mUri:Landroid/net/Uri;

    .line 1028
    iput-wide p3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;->mLastModified:J

    .line 1025
    return-void
.end method


# virtual methods
.method public getLastModified()J
    .locals 2

    .prologue
    .line 1040
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;->mLastModified:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

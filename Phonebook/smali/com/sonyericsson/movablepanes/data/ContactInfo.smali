.class public Lcom/sonyericsson/movablepanes/data/ContactInfo;
.super Lcom/sonyericsson/movablepanes/data/Info;
.source "ContactInfo.java"


# instance fields
.field private final mContactId:J

.field private final mContactName:Ljava/lang/String;

.field private mContactPresence:I

.field private mContactStatusResPackage:Ljava/lang/String;

.field private final mContactUri:Landroid/net/Uri;

.field private final mPhotoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "contactId"    # J
    .param p3, "contactName"    # Ljava/lang/String;
    .param p4, "photoUriString"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/data/Info;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/sonyericsson/movablepanes/data/ContactInfo;->mContactId:J

    .line 29
    iput-object p3, p0, Lcom/sonyericsson/movablepanes/data/ContactInfo;->mContactName:Ljava/lang/String;

    .line 30
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/sonyericsson/movablepanes/data/ContactInfo;->mPhotoUri:Landroid/net/Uri;

    .line 31
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/movablepanes/data/ContactInfo;->mContactUri:Landroid/net/Uri;

    .line 27
    return-void

    .line 30
    :cond_0
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "contactId"    # J
    .param p3, "contactName"    # Ljava/lang/String;
    .param p4, "photoUriString"    # Ljava/lang/String;
    .param p5, "contactStatusResPackage"    # Ljava/lang/String;
    .param p6, "contactPresence"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/movablepanes/data/ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 38
    iput-object p5, p0, Lcom/sonyericsson/movablepanes/data/ContactInfo;->mContactStatusResPackage:Ljava/lang/String;

    .line 39
    iput p6, p0, Lcom/sonyericsson/movablepanes/data/ContactInfo;->mContactPresence:I

    .line 36
    return-void
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/sonyericsson/movablepanes/data/ContactInfo;->mContactId:J

    return-wide v0
.end method

.method public getContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/data/ContactInfo;->mContactName:Ljava/lang/String;

    return-object v0
.end method

.method public getContactPresence()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/sonyericsson/movablepanes/data/ContactInfo;->mContactPresence:I

    return v0
.end method

.method public getContactStatusResPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/data/ContactInfo;->mContactStatusResPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/data/ContactInfo;->mPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUniqueId()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/sonyericsson/movablepanes/data/ContactInfo;->mContactId:J

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/data/ContactInfo;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

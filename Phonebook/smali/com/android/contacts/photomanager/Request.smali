.class public final Lcom/android/contacts/photomanager/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private final mContactId:J

.field private final mContactLookuoUri:Landroid/net/Uri;

.field private final mContactPhotoId:J

.field private final mContactPhotoUri:Landroid/net/Uri;

.field private final mIsCircular:Z

.field private final mIsGalRequest:Z

.field private final mRequestedExtent:I


# direct methods
.method private constructor <init>(JLandroid/net/Uri;IZJLandroid/net/Uri;Z)V
    .locals 0
    .param p1, "contactPhotoId"    # J
    .param p3, "contactPhotoUri"    # Landroid/net/Uri;
    .param p4, "requestedExtent"    # I
    .param p5, "isCircular"    # Z
    .param p6, "contactId"    # J
    .param p8, "lookupUri"    # Landroid/net/Uri;
    .param p9, "isGalRequest"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/android/contacts/photomanager/Request;->mContactPhotoId:J

    .line 44
    iput-object p3, p0, Lcom/android/contacts/photomanager/Request;->mContactPhotoUri:Landroid/net/Uri;

    .line 45
    iput-boolean p5, p0, Lcom/android/contacts/photomanager/Request;->mIsCircular:Z

    .line 46
    iput p4, p0, Lcom/android/contacts/photomanager/Request;->mRequestedExtent:I

    .line 47
    iput-wide p6, p0, Lcom/android/contacts/photomanager/Request;->mContactId:J

    .line 48
    iput-object p8, p0, Lcom/android/contacts/photomanager/Request;->mContactLookuoUri:Landroid/net/Uri;

    .line 49
    iput-boolean p9, p0, Lcom/android/contacts/photomanager/Request;->mIsGalRequest:Z

    .line 42
    return-void
.end method

.method public static createFromContactId(ZJI)Lcom/android/contacts/photomanager/Request;
    .locals 11
    .param p0, "isCircular"    # Z
    .param p1, "contactId"    # J
    .param p3, "requestedExtent"    # I

    .prologue
    const/4 v3, 0x0

    .line 94
    new-instance v0, Lcom/android/contacts/photomanager/Request;

    const-wide/16 v1, 0x0

    .line 95
    const/4 v9, 0x0

    move v4, p3

    move v5, p0

    move-wide v6, p1

    move-object v8, v3

    .line 94
    invoke-direct/range {v0 .. v9}, Lcom/android/contacts/photomanager/Request;-><init>(JLandroid/net/Uri;IZJLandroid/net/Uri;Z)V

    return-object v0
.end method

.method public static createFromContactLookupKey(ZLandroid/net/Uri;I)Lcom/android/contacts/photomanager/Request;
    .locals 10
    .param p0, "isCircular"    # Z
    .param p1, "lookupUri"    # Landroid/net/Uri;
    .param p2, "requestedExtent"    # I

    .prologue
    .line 109
    new-instance v0, Lcom/android/contacts/photomanager/Request;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 110
    const-wide/16 v6, -0x1

    const/4 v9, 0x1

    move v4, p2

    move v5, p0

    move-object v8, p1

    .line 109
    invoke-direct/range {v0 .. v9}, Lcom/android/contacts/photomanager/Request;-><init>(JLandroid/net/Uri;IZJLandroid/net/Uri;Z)V

    return-object v0
.end method

.method public static createFromThumbnailId(JZJ)Lcom/android/contacts/photomanager/Request;
    .locals 10
    .param p0, "contactPhotoId"    # J
    .param p2, "isCircular"    # Z
    .param p3, "contactId"    # J

    .prologue
    const/4 v3, 0x0

    .line 63
    new-instance v0, Lcom/android/contacts/photomanager/Request;

    const/4 v4, -0x1

    .line 64
    const/4 v9, 0x0

    move-wide v1, p0

    move v5, p2

    move-wide v6, p3

    move-object v8, v3

    .line 63
    invoke-direct/range {v0 .. v9}, Lcom/android/contacts/photomanager/Request;-><init>(JLandroid/net/Uri;IZJLandroid/net/Uri;Z)V

    return-object v0
.end method

.method public static createFromUri(Landroid/net/Uri;IZJ)Lcom/android/contacts/photomanager/Request;
    .locals 11
    .param p0, "contactPhotoUri"    # Landroid/net/Uri;
    .param p1, "requestedExtent"    # I
    .param p2, "isCircular"    # Z
    .param p3, "contactId"    # J

    .prologue
    .line 79
    new-instance v0, Lcom/android/contacts/photomanager/Request;

    const-wide/16 v1, 0x0

    .line 80
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    .line 79
    invoke-direct/range {v0 .. v9}, Lcom/android/contacts/photomanager/Request;-><init>(JLandroid/net/Uri;IZJLandroid/net/Uri;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 157
    if-ne p0, p1, :cond_0

    return v7

    .line 158
    :cond_0
    if-nez p1, :cond_1

    return v6

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/photomanager/Request;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v6

    :cond_2
    move-object v0, p1

    .line 160
    check-cast v0, Lcom/android/contacts/photomanager/Request;

    .line 161
    .local v0, "that":Lcom/android/contacts/photomanager/Request;
    iget-wide v2, p0, Lcom/android/contacts/photomanager/Request;->mContactPhotoId:J

    iget-wide v4, v0, Lcom/android/contacts/photomanager/Request;->mContactPhotoId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    return v6

    .line 162
    :cond_3
    iget v1, p0, Lcom/android/contacts/photomanager/Request;->mRequestedExtent:I

    iget v2, v0, Lcom/android/contacts/photomanager/Request;->mRequestedExtent:I

    if-eq v1, v2, :cond_4

    return v6

    .line 163
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/photomanager/Request;->mContactPhotoUri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/android/contacts/photomanager/Request;->mContactPhotoUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_5

    return v6

    .line 164
    :cond_5
    iget-wide v2, p0, Lcom/android/contacts/photomanager/Request;->mContactId:J

    iget-wide v4, v0, Lcom/android/contacts/photomanager/Request;->mContactId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    return v6

    .line 165
    :cond_6
    iget-object v1, p0, Lcom/android/contacts/photomanager/Request;->mContactLookuoUri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/android/contacts/photomanager/Request;->mContactLookuoUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_7

    return v6

    .line 166
    :cond_7
    iget-boolean v1, p0, Lcom/android/contacts/photomanager/Request;->mIsGalRequest:Z

    iget-boolean v2, v0, Lcom/android/contacts/photomanager/Request;->mIsGalRequest:Z

    xor-int/2addr v1, v2

    if-eqz v1, :cond_8

    return v6

    .line 167
    :cond_8
    iget-boolean v1, p0, Lcom/android/contacts/photomanager/Request;->mIsCircular:Z

    iget-boolean v2, v0, Lcom/android/contacts/photomanager/Request;->mIsCircular:Z

    xor-int/2addr v1, v2

    if-eqz v1, :cond_9

    return v6

    .line 169
    :cond_9
    return v7
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/android/contacts/photomanager/Request;->mContactId:J

    return-wide v0
.end method

.method public getContactLookuoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/contacts/photomanager/Request;->mContactLookuoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getContactPhotoId()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/contacts/photomanager/Request;->mContactPhotoId:J

    return-wide v0
.end method

.method public getContactPhotoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/contacts/photomanager/Request;->mContactPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getPhotoKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/contacts/photomanager/Request;->mContactPhotoUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/photomanager/Request;->mContactPhotoId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/photomanager/Request;->mContactPhotoUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getRequestedExtent()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/contacts/photomanager/Request;->mRequestedExtent:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 151
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/contacts/photomanager/Request;->mContactPhotoId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/contacts/photomanager/Request;->mRequestedExtent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/contacts/photomanager/Request;->mContactPhotoUri:Landroid/net/Uri;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/android/contacts/photomanager/Request;->mContactId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 152
    iget-object v1, p0, Lcom/android/contacts/photomanager/Request;->mContactLookuoUri:Landroid/net/Uri;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/contacts/photomanager/Request;->mIsCircular:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/contacts/photomanager/Request;->mIsGalRequest:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 151
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCircular()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/contacts/photomanager/Request;->mIsCircular:Z

    return v0
.end method

.method public isGalRequest()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/contacts/photomanager/Request;->mIsGalRequest:Z

    return v0
.end method

.method public isPhotoIdRequest()Z
    .locals 4

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/android/contacts/photomanager/Request;->mContactPhotoId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUriRequest()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/contacts/photomanager/Request;->mContactPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

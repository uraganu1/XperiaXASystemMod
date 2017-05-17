.class Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$2;
.super Landroid/util/LruCache;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Object;",
        "Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;
    .param p2, "$anonymous0"    # I

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$2;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "oldValue"    # Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    .param p4, "newValue"    # Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;

    .prologue
    .line 551
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 550
    check-cast p3, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;

    .end local p3    # "oldValue":Ljava/lang/Object;
    check-cast p4, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;

    .end local p4    # "newValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$2;->entryRemoved(ZLjava/lang/Object;Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;)V

    return-void
.end method

.method protected sizeOf(Ljava/lang/Object;Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;

    .prologue
    .line 547
    iget-object v0, p2, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 546
    check-cast p2, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$2;->sizeOf(Ljava/lang/Object;Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;)I

    move-result v0

    return v0
.end method

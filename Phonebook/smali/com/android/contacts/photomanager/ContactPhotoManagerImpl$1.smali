.class Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$1;
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
        "Landroid/graphics/Bitmap;",
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
    .line 534
    iput-object p1, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$1;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "oldValue"    # Landroid/graphics/Bitmap;
    .param p4, "newValue"    # Landroid/graphics/Bitmap;

    .prologue
    .line 540
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 539
    check-cast p3, Landroid/graphics/Bitmap;

    .end local p3    # "oldValue":Ljava/lang/Object;
    check-cast p4, Landroid/graphics/Bitmap;

    .end local p4    # "newValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$1;->entryRemoved(ZLjava/lang/Object;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected sizeOf(Ljava/lang/Object;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 536
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 535
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$1;->sizeOf(Ljava/lang/Object;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

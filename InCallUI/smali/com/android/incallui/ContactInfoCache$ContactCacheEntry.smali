.class public Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactCacheEntry"
.end annotation


# instance fields
.field public contactUri:Landroid/net/Uri;

.field public displayPhotoUri:Landroid/net/Uri;

.field public isSipCall:Z

.field public label:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public lookupKey:Ljava/lang/String;

.field public lookupUri:Landroid/net/Uri;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public photo:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 751
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 752
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 751
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 753
    const-string/jumbo v1, "number"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 751
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 754
    const-string/jumbo v1, "location"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 751
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 755
    const-string/jumbo v1, "label"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 751
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 756
    const-string/jumbo v1, "photo"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 751
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 757
    const-string/jumbo v1, "isSipCall"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    .line 751
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 758
    const-string/jumbo v1, "contactUri"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactUri:Landroid/net/Uri;

    .line 751
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 759
    const-string/jumbo v1, "displayPhotoUri"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    .line 751
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

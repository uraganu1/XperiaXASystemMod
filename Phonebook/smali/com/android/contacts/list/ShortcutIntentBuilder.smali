.class public Lcom/android/contacts/list/ShortcutIntentBuilder;
.super Ljava/lang/Object;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;,
        Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;,
        Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;
    }
.end annotation


# static fields
.field private static final CONTACT_COLUMNS:[Ljava/lang/String;

.field private static final CONTACT_DISPLAY_NAME_COLUMN_INDEX:I = 0x0

.field private static final CONTACT_PHOTO_ID_COLUMN_INDEX:I = 0x1

.field public static final INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION:Ljava/lang/String; = "com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

.field private static final PHOTO_COLUMNS:[Ljava/lang/String;

.field private static final PHOTO_PHOTO_COLUMN_INDEX:I = 0x0

.field private static final PHOTO_SELECTION:Ljava/lang/String; = "_id=?"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/contacts/list/ShortcutIntentBuilder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "bitmapData"    # [B

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 51
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v3

    .line 50
    sput-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;

    .line 59
    new-array v0, v3, [Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "data15"

    aput-object v1, v0, v2

    .line 59
    sput-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    .line 91
    return-void
.end method

.method private createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 9
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "bitmapData"    # [B

    .prologue
    const/4 v6, 0x0

    .line 189
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 191
    .local v0, "contactId":J
    :goto_0
    invoke-direct {p0, p4, p3, v0, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->getPhotoDrawable([BLjava/lang/String;J)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 193
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "android.provider.action.QUICK_CONTACT"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v5, "shortcutIntent":Landroid/content/Intent;
    const v7, 0x10008000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 202
    const-string/jumbo v7, "com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    invoke-virtual {v5, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string/jumbo v7, "android.provider.extra.MODE"

    .line 206
    const/4 v8, 0x3

    .line 205
    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const-string/jumbo v7, "android.provider.extra.EXCLUDE_MIMES"

    .line 208
    check-cast v6, [Ljava/lang/String;

    .line 207
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object v6, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 212
    .local v3, "icon":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 214
    const-string/jumbo v6, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 215
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 216
    const-string/jumbo v6, "android.intent.extra.shortcut.NAME"

    iget-object v7, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 217
    const v8, 0x7f090123

    .line 216
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    :goto_1
    iget-object v6, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    invoke-interface {v6, p1, v4}, Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;->onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V

    .line 188
    return-void

    .line 190
    .end local v0    # "contactId":J
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "icon":Landroid/graphics/Bitmap;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "shortcutIntent":Landroid/content/Intent;
    :cond_0
    const-wide/16 v0, -0x1

    .restart local v0    # "contactId":J
    goto :goto_0

    .line 219
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "icon":Landroid/graphics/Bitmap;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "shortcutIntent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v6, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v4, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private getPhotoDrawable([BLjava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "bitmapData"    # [B
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "contactId"    # J

    .prologue
    const/4 v3, 0x0

    .line 177
    if-eqz p1, :cond_0

    .line 178
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 179
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    .line 181
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v1

    .line 183
    sget-object v2, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 181
    invoke-virtual {v1, v2, p3, p4}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getDefaultShortcutAvatarDrawableForContact(Lcom/android/contacts/photomanager/DefaultImageRequest;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createContactShortcutIntent(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 97
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;-><init>(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method

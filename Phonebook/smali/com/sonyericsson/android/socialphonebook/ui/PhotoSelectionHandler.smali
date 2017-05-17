.class public abstract Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;
.super Ljava/lang/Object;
.source "PhotoSelectionHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_CAMERA_WITH_DATA:I = 0x3e9

.field private static final REQUEST_CODE_PHOTO_PICKED_WITH_DATA:I = 0x3ea

.field private static final REQUEST_CROP_PHOTO:I = 0x3eb

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mActivity:Landroid/app/Activity;

.field private mContactPictureValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final mCroppedPhotoUri:Landroid/net/Uri;

.field private final mPhotoMode:I

.field private final mPhotoPickSize:I

.field private final mPhotoView:Landroid/view/View;

.field private mPopup:Landroid/app/DialogFragment;

.field private final mTempPhotoUri:Landroid/net/Uri;

.field private mTypeOfDialog:Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mCroppedPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mTempPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .param p1, "inputUri"    # Landroid/net/Uri;
    .param p2, "outputUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->doCropPhoto(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;Landroid/net/Uri;)V
    .locals 0
    .param p1, "photoUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->startPickFromCloudActivity(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;Landroid/net/Uri;)V
    .locals 0
    .param p1, "photoUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->startPickFromGalleryActivity(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;Landroid/net/Uri;)V
    .locals 0
    .param p1, "photoFile"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->startTakePhotoActivity(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;ILcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "photoView"    # Landroid/view/View;
    .param p3, "photoMode"    # I
    .param p4, "typeOfDialog"    # Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->verifyIfActivityIsTransactionSafe(Landroid/app/Activity;)V

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mActivity:Landroid/app/Activity;

    .line 75
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mPhotoView:Landroid/view/View;

    .line 76
    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mPhotoMode:I

    .line 77
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->getPhotoPickSize()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mPhotoPickSize:I

    .line 78
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mTypeOfDialog:Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    .line 79
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->generateTempImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mTempPhotoUri:Landroid/net/Uri;

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->generateTempCroppedImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mCroppedPhotoUri:Landroid/net/Uri;

    .line 72
    return-void
.end method

.method private doCropPhoto(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 5
    .param p1, "inputUri"    # Landroid/net/Uri;
    .param p2, "outputUri"    # Landroid/net/Uri;

    .prologue
    .line 188
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->getCropImageIntent(Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 189
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x3eb

    invoke-virtual {p0, v1, v2, p1}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Cannot crop image"

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090084

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getCropImageIntent(Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p1, "inputUri"    # Landroid/net/Uri;
    .param p2, "outputUri"    # Landroid/net/Uri;

    .prologue
    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-static {v0, p2}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->addPhotoPickerExtras(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 258
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mPhotoPickSize:I

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->addGalleryIntentExtras(Landroid/content/Intent;I)V

    .line 259
    return-object v0
.end method

.method private getPhotoPickIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .param p1, "outputUri"    # Landroid/net/Uri;

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-static {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->addPhotoPickerExtras(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 248
    return-object v0
.end method

.method private getPhotoPickSize()I
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    .line 226
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 227
    const-string/jumbo v4, "display_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 225
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 229
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 231
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 232
    return v0

    .line 235
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_1
    const/4 v0, -0x1

    return v0

    .line 234
    :catchall_0
    move-exception v0

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 234
    throw v0
.end method

.method private getTakePhotoIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .param p1, "outputUri"    # Landroid/net/Uri;

    .prologue
    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 267
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->addPhotoPickerExtras(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 268
    return-object v0
.end method

.method private startPickFromCloudActivity(Landroid/net/Uri;)V
    .locals 2
    .param p1, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 219
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils;->getVerizonCloudPhotoPickIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 220
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1, p1}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILandroid/net/Uri;)V

    .line 218
    return-void
.end method

.method private startPickFromGalleryActivity(Landroid/net/Uri;)V
    .locals 2
    .param p1, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->getPhotoPickIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1, p1}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILandroid/net/Uri;)V

    .line 213
    return-void
.end method

.method private startTakePhotoActivity(Landroid/net/Uri;)V
    .locals 2
    .param p1, "photoFile"    # Landroid/net/Uri;

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->getTakePhotoIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1, p1}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILandroid/net/Uri;)V

    .line 202
    return-void
.end method


# virtual methods
.method public abstract getListener()Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;
.end method

.method public handlePhotoActivityResult(IILandroid/content/Intent;)Z
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->getListener()Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v3

    .line 114
    .local v3, "listener":Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;
    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    .line 115
    packed-switch p1, :pswitch_data_0

    .line 175
    :cond_0
    return v9

    .line 119
    :pswitch_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 120
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 126
    .local v5, "uri":Landroid/net/Uri;
    :goto_0
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mTempPhotoUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;->onPhotoSelected(Landroid/net/Uri;)Z

    move-result v6

    return v6

    .line 122
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mCroppedPhotoUri:Landroid/net/Uri;

    .restart local v5    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 134
    .end local v5    # "uri":Landroid/net/Uri;
    :pswitch_1
    const/4 v2, 0x0

    .line 135
    .local v2, "isWritable":Z
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 136
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 142
    .restart local v5    # "uri":Landroid/net/Uri;
    :goto_1
    if-eqz v2, :cond_3

    .line 146
    move-object v4, v5

    .line 147
    .local v4, "toCrop":Landroid/net/Uri;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mCroppedPhotoUri:Landroid/net/Uri;

    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->doCropPhoto(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 172
    :goto_2
    return v10

    .line 138
    .end local v4    # "toCrop":Landroid/net/Uri;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;->getCurrentPhotoUri()Landroid/net/Uri;

    move-result-object v5

    .line 139
    .restart local v5    # "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    goto :goto_1

    .line 149
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mTempPhotoUri:Landroid/net/Uri;

    .line 151
    .restart local v4    # "toCrop":Landroid/net/Uri;
    :try_start_0
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mActivity:Landroid/app/Activity;

    const/4 v7, 0x0

    invoke-static {v6, v5, v4, v7}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->savePhotoFromUriToUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Z)Z

    .line 155
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$1;

    invoke-direct {v0, p0, v4}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;Landroid/net/Uri;)V

    .line 165
    .local v0, "cropPhotoRunnable":Ljava/lang/Runnable;
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/CopyExifDataAndCropPhotoTask;

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7, v0}, Lcom/sonyericsson/android/socialphonebook/CopyExifDataAndCropPhotoTask;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/net/Uri;

    .line 166
    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    .line 165
    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/socialphonebook/CopyExifDataAndCropPhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 167
    .end local v0    # "cropPhotoRunnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Did not have read-access to uri : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return v9

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->getListener()Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v2

    .line 92
    .local v2, "listener":Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;
    if-eqz v2, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mPhotoView:Landroid/view/View;

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mPhotoMode:I

    .line 94
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mTypeOfDialog:Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mContactPictureValues:Ljava/util/ArrayList;

    .line 93
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/editor/PhotoActionPopup;->createPopup(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;ILcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;Ljava/util/ArrayList;)Landroid/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mPopup:Landroid/app/DialogFragment;

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mPopup:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;->isSafeToCommitTransactions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mPopup:Landroid/app/DialogFragment;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mPopup:Landroid/app/DialogFragment;

    invoke-virtual {v3}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public setContactPictures(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "contactPictureValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mContactPictureValues:Ljava/util/ArrayList;

    .line 83
    return-void
.end method

.method protected abstract startPhotoActivity(Landroid/content/Intent;ILandroid/net/Uri;)V
.end method

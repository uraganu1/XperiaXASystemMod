.class public Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;
.super Ljava/lang/Object;
.source "LockscreenWallpaperController.java"

# interfaces
.implements Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenReloadWallpaperCallback;
.implements Lcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockscreenStreamOpener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;

.field private final mLockscreenWallpaperCache:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

.field private final mLockscreenWallpaperChangedObserver:Landroid/database/ContentObserver;

.field private mLockscreenWallpaperListener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperListener;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->isWallpaperChangeRestricted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;)I
    .locals 1

    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockscreenWallpaperCache"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;
    .param p3, "lockscreenStreamOpener"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;
    .param p4, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;

    .line 57
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 56
    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;-><init>(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperChangedObserver:Landroid/database/ContentObserver;

    .line 84
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperCache:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    .line 86
    iput-object p3, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenStreamOpener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;

    .line 87
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperCache:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    invoke-virtual {v0, p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->setLockscreenReloadWallpaperCallback(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenReloadWallpaperCallback;)V

    .line 88
    iput-object p4, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 89
    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->handleUserSwitch()V

    .line 83
    return-void
.end method

.method private getCurrentUser()I
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method private getFileNameForUser(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "protected_wallpaper."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "fileName":Ljava/lang/String;
    return-object v0
.end method

.method private informLockscreenWallpaperChanged()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperListener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperListener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperListener;

    invoke-interface {v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperListener;->onLockscreenWallpaperCacheUpdated()V

    .line 230
    :cond_0
    return-void
.end method

.method private isWallpaperChangeRestricted(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 97
    const-string/jumbo v2, "device_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 96
    invoke-static {v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    .line 99
    .local v0, "dpm":Landroid/app/admin/IDevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2, p1}, Landroid/app/admin/IDevicePolicyManager;->isWallpaperChangeRestricted(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    const/4 v2, 0x1

    return v2

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LockscreenWallpaperController"

    const-string/jumbo v3, "Failed to communicate with DevicePolicyManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private saveLockscreenWallpaper()V
    .locals 12

    .prologue
    .line 120
    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->getCurrentUser()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->getFileNameForUser(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 122
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 125
    :cond_0
    const/4 v6, 0x0

    .line 126
    .local v6, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 130
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->getCurrentUser()I

    move-result v10

    .line 129
    invoke-static {v9, v10}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperUtils;->getUserSpecificContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v8

    .line 131
    .local v8, "userContext":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 132
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    sget-object v9, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 133
    .local v6, "is":Ljava/io/InputStream;
    iget-object v9, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->getCurrentUser()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->getFileNameForUser(I)Ljava/lang/String;

    move-result-object v10

    .line 134
    const/4 v11, 0x0

    .line 133
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 136
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 137
    .local v0, "bytes":[B
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_3

    .line 138
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    .end local v0    # "bytes":[B
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "read":I
    .end local v8    # "userContext":Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 142
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v9, "LockscreenWallpaperController"

    const-string/jumbo v10, "Exception occurred during saving the wallpaper"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    if-eqz v5, :cond_1

    .line 146
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 151
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 153
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 119
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 144
    .restart local v0    # "bytes":[B
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "read":I
    .restart local v8    # "userContext":Landroid/content/Context;
    :cond_3
    if-eqz v5, :cond_4

    .line 146
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 151
    :cond_4
    :goto_3
    if-eqz v6, :cond_2

    .line 153
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 154
    :catch_1
    move-exception v2

    .line 155
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v9, "LockscreenWallpaperController"

    const-string/jumbo v10, "IOException occurred while close the stream"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 147
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 148
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "LockscreenWallpaperController"

    const-string/jumbo v10, "IOException occurred while close the stream"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 147
    .end local v0    # "bytes":[B
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "read":I
    .end local v8    # "userContext":Landroid/content/Context;
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 148
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "LockscreenWallpaperController"

    const-string/jumbo v10, "IOException occurred while close the stream"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 154
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 155
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "LockscreenWallpaperController"

    const-string/jumbo v10, "IOException occurred while close the stream"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 143
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 144
    if-eqz v5, :cond_5

    .line 146
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 151
    :cond_5
    :goto_4
    if-eqz v6, :cond_6

    .line 153
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 143
    :cond_6
    :goto_5
    throw v9

    .line 147
    :catch_5
    move-exception v2

    .line 148
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "LockscreenWallpaperController"

    const-string/jumbo v11, "IOException occurred while close the stream"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 154
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 155
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "LockscreenWallpaperController"

    const-string/jumbo v11, "IOException occurred while close the stream"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private triggerLockscreenWallpaperAsyncLoadingForUser(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 193
    const/4 v6, 0x0

    .line 194
    .local v6, "file":Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->isWallpaperChangeRestricted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    new-instance v6, Ljava/io/File;

    .end local v6    # "file":Ljava/io/File;
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->getFileNameForUser(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    :cond_0
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mContext:Landroid/content/Context;

    .line 198
    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenStreamOpener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;

    sget-object v3, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperContract;->CONTENT_URI:Landroid/net/Uri;

    move v4, p1

    move-object v5, p0

    .line 197
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;-><init>(Landroid/content/Context;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;Landroid/net/Uri;ILcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;Ljava/io/File;)V

    .line 200
    .local v0, "asyncTaskWallpaperLoader":Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 192
    return-void
.end method


# virtual methods
.method public getLockscreenWallpaper()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperCache:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->getWallpaperForUserId(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public handleUserSwitch()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 166
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperChangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 169
    sget-object v1, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperContract;->CONTENT_URI:Landroid/net/Uri;

    .line 170
    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperChangedObserver:Landroid/database/ContentObserver;

    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->getCurrentUser()I

    move-result v3

    .line 169
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperChangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 165
    return-void
.end method

.method public pruneMemory()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperCache:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperCache:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->clearCache()V

    .line 251
    :cond_0
    return-void
.end method

.method public reloadWallpaperForUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 265
    const-string/jumbo v2, "device_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 264
    invoke-static {v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    .line 267
    .local v0, "dpm":Landroid/app/admin/IDevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2, p1}, Landroid/app/admin/IDevicePolicyManager;->isWallpaperChangeRestricted(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    return-void

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LockscreenWallpaperController"

    const-string/jumbo v3, "Failed to communicate with DevicePolicyManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->triggerLockscreenWallpaperAsyncLoadingForUser(I)V

    .line 263
    return-void
.end method

.method public removeUserFromCache(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperCache:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    invoke-virtual {v0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->removeUser(I)V

    .line 282
    return-void
.end method

.method public setLockscreenWallpaperListener(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperListener;)V
    .locals 0
    .param p1, "lockscreenWallpaperListener"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperListener;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperListener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperListener;

    .line 244
    return-void
.end method

.method public triggerLockscreenWallpaperAsyncLoading()V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->isWallpaperChangeRestricted(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->saveLockscreenWallpaper()V

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->triggerLockscreenWallpaperAsyncLoadingForUser(I)V

    .line 179
    return-void
.end method

.method public wallpaperLoaded(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "userId"    # I

    .prologue
    .line 212
    if-eqz p1, :cond_1

    .line 213
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperCache:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    invoke-virtual {v0, p2, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->addWallpaperForUserId(ILandroid/graphics/Bitmap;)V

    .line 218
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->getCurrentUser()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->informLockscreenWallpaperChanged()V

    .line 211
    :cond_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperCache:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    invoke-virtual {v0, p2}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->removeUser(I)V

    goto :goto_0
.end method

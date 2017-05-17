.class public final Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$Volte;
.super Ljava/lang/Object;
.source "ImsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Volte"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROVISIONED:Ljava/lang/String; = "provisioned"

.field public static final VIDEO_SETTING_ON:Ljava/lang/String; = "video_setting_on"

.field public static final VOLTE_SETTING_ON:Ljava/lang/String; = "volte_setting_on"

.field public static final VOPS_ENABLED:Ljava/lang/String; = "vops_enabled"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "content://imssettings/volte"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$Volte;->CONTENT_URI:Landroid/net/Uri;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$ImsSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v6, 0x0

    .line 110
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$Volte;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 111
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 112
    .local v8, "ret":I
    if-eqz v6, :cond_0

    .line 113
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 115
    invoke-interface {v6, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 118
    :cond_0
    const/4 v0, -0x1

    if-ne v8, v0, :cond_2

    .line 119
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$ImsSettingNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$ImsSettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "ret":I
    :catch_0
    move-exception v7

    .line 123
    .local v7, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_1
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$ImsSettingNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$ImsSettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .end local v7    # "e":Ljava/lang/UnsupportedOperationException;
    :catchall_0
    move-exception v0

    .line 125
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_1
    throw v0

    .line 125
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "ret":I
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_3
    return v8
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$Volte;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 83
    const-string/jumbo v1, "video_setting_on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "volte_setting_on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$Volte;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 88
    const/4 v1, 0x1

    return v1

    .line 90
    :cond_1
    return v2

    .line 93
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_2
    return v2
.end method

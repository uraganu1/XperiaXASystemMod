.class public Lcom/sonyericsson/conversations/util/VCalendarUtil;
.super Ljava/lang/Object;
.source "VCalendarUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVCalendarFileFromInputStream(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 37
    const/4 v8, 0x0

    .line 38
    .local v8, "vCalUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 39
    .local v6, "vCalFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 40
    .local v3, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 41
    .local v4, "output":Ljava/io/OutputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "vCalendar_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 43
    .local v7, "vCalFileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 44
    .local v3, "input":Ljava/io/InputStream;
    if-eqz v3, :cond_1

    .line 45
    const-string/jumbo v9, ".vcs"

    invoke-static {p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getTempDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    invoke-static {v7, v9, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 46
    .local v6, "vCalFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->deleteOnExit()V

    .line 47
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 48
    .end local v4    # "output":Ljava/io/OutputStream;
    .local v5, "output":Ljava/io/OutputStream;
    if-eqz v5, :cond_0

    .line 49
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 50
    .local v0, "data":I
    :goto_0
    const/4 v9, -0x1

    if-le v0, v9, :cond_0

    .line 51
    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write(I)V

    .line 52
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_11

    move-result v0

    goto :goto_0

    .end local v0    # "data":I
    :cond_0
    move-object v4, v5

    .line 65
    .end local v5    # "output":Ljava/io/OutputStream;
    .end local v6    # "vCalFile":Ljava/io/File;
    :cond_1
    if-eqz v3, :cond_2

    .line 66
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 72
    :cond_2
    if-eqz v4, :cond_3

    .line 73
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    :cond_3
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 82
    .end local v3    # "input":Ljava/io/InputStream;
    .local v8, "vCalUri":Landroid/net/Uri;
    :goto_1
    return-object v8

    .line 75
    .restart local v3    # "input":Ljava/io/InputStream;
    .local v8, "vCalUri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "vCalUri":Landroid/net/Uri;
    goto :goto_1

    .line 77
    .end local v2    # "e":Ljava/io/IOException;
    .local v8, "vCalUri":Landroid/net/Uri;
    :catchall_0
    move-exception v9

    .line 78
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 77
    .local v8, "vCalUri":Landroid/net/Uri;
    throw v9

    .line 68
    .local v8, "vCalUri":Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 72
    .restart local v2    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_4

    .line 73
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 78
    :cond_4
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "vCalUri":Landroid/net/Uri;
    goto :goto_1

    .line 75
    .local v8, "vCalUri":Landroid/net/Uri;
    :catch_2
    move-exception v2

    .line 78
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "vCalUri":Landroid/net/Uri;
    goto :goto_1

    .line 77
    .local v8, "vCalUri":Landroid/net/Uri;
    :catchall_1
    move-exception v9

    .line 78
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 77
    .local v8, "vCalUri":Landroid/net/Uri;
    throw v9

    .line 70
    .end local v2    # "e":Ljava/io/IOException;
    .local v8, "vCalUri":Landroid/net/Uri;
    :catchall_2
    move-exception v9

    .line 72
    if-eqz v4, :cond_5

    .line 73
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 78
    :cond_5
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 70
    .local v8, "vCalUri":Landroid/net/Uri;
    :goto_2
    throw v9

    .line 75
    .local v8, "vCalUri":Landroid/net/Uri;
    :catch_3
    move-exception v2

    .line 78
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "vCalUri":Landroid/net/Uri;
    goto :goto_2

    .line 77
    .end local v2    # "e":Ljava/io/IOException;
    .local v8, "vCalUri":Landroid/net/Uri;
    :catchall_3
    move-exception v9

    .line 78
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 77
    .local v8, "vCalUri":Landroid/net/Uri;
    throw v9

    .line 60
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    .local v8, "vCalUri":Landroid/net/Uri;
    :catch_4
    move-exception v2

    .line 65
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    if-eqz v3, :cond_6

    .line 66
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 72
    :cond_6
    if-eqz v4, :cond_7

    .line 73
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 78
    :cond_7
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "vCalUri":Landroid/net/Uri;
    goto :goto_1

    .line 75
    .local v8, "vCalUri":Landroid/net/Uri;
    :catch_5
    move-exception v2

    .line 78
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "vCalUri":Landroid/net/Uri;
    goto :goto_1

    .line 77
    .local v8, "vCalUri":Landroid/net/Uri;
    :catchall_4
    move-exception v9

    .line 78
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 77
    .local v8, "vCalUri":Landroid/net/Uri;
    throw v9

    .line 68
    .local v8, "vCalUri":Landroid/net/Uri;
    :catch_6
    move-exception v2

    .line 72
    if-eqz v4, :cond_8

    .line 73
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 78
    :cond_8
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "vCalUri":Landroid/net/Uri;
    goto :goto_1

    .line 75
    .local v8, "vCalUri":Landroid/net/Uri;
    :catch_7
    move-exception v2

    .line 78
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "vCalUri":Landroid/net/Uri;
    goto :goto_1

    .line 77
    .local v8, "vCalUri":Landroid/net/Uri;
    :catchall_5
    move-exception v9

    .line 78
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 77
    .local v8, "vCalUri":Landroid/net/Uri;
    throw v9

    .line 70
    .local v8, "vCalUri":Landroid/net/Uri;
    :catchall_6
    move-exception v9

    .line 72
    if-eqz v4, :cond_9

    .line 73
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 78
    :cond_9
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 70
    .local v8, "vCalUri":Landroid/net/Uri;
    :goto_4
    throw v9

    .line 75
    .local v8, "vCalUri":Landroid/net/Uri;
    :catch_8
    move-exception v2

    .line 78
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "vCalUri":Landroid/net/Uri;
    goto :goto_4

    .line 77
    .local v8, "vCalUri":Landroid/net/Uri;
    :catchall_7
    move-exception v9

    .line 78
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 77
    .local v8, "vCalUri":Landroid/net/Uri;
    throw v9

    .line 56
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "output":Ljava/io/OutputStream;
    .local v8, "vCalUri":Landroid/net/Uri;
    :catch_9
    move-exception v1

    .line 65
    .end local v4    # "output":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_5
    if-eqz v3, :cond_a

    .line 66
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 72
    :cond_a
    if-eqz v4, :cond_b

    .line 73
    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 78
    :cond_b
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "vCalUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 75
    .local v8, "vCalUri":Landroid/net/Uri;
    :catch_a
    move-exception v2

    .line 78
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "vCalUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 77
    .end local v2    # "e":Ljava/io/IOException;
    .local v8, "vCalUri":Landroid/net/Uri;
    :catchall_8
    move-exception v9

    .line 78
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 77
    .local v8, "vCalUri":Landroid/net/Uri;
    throw v9

    .line 68
    .local v8, "vCalUri":Landroid/net/Uri;
    :catch_b
    move-exception v2

    .line 72
    .restart local v2    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_c

    .line 73
    :try_start_c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 78
    :cond_c
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "vCalUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 75
    .local v8, "vCalUri":Landroid/net/Uri;
    :catch_c
    move-exception v2

    .line 78
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "vCalUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 77
    .local v8, "vCalUri":Landroid/net/Uri;
    :catchall_9
    move-exception v9

    .line 78
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 77
    .local v8, "vCalUri":Landroid/net/Uri;
    throw v9

    .line 70
    .end local v2    # "e":Ljava/io/IOException;
    .local v8, "vCalUri":Landroid/net/Uri;
    :catchall_a
    move-exception v9

    .line 72
    if-eqz v4, :cond_d

    .line 73
    :try_start_d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .line 78
    :cond_d
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 70
    .local v8, "vCalUri":Landroid/net/Uri;
    :goto_6
    throw v9

    .line 75
    .local v8, "vCalUri":Landroid/net/Uri;
    :catch_d
    move-exception v2

    .line 78
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "vCalUri":Landroid/net/Uri;
    goto :goto_6

    .line 77
    .end local v2    # "e":Ljava/io/IOException;
    .local v8, "vCalUri":Landroid/net/Uri;
    :catchall_b
    move-exception v9

    .line 78
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 77
    .local v8, "vCalUri":Landroid/net/Uri;
    throw v9

    .line 63
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "output":Ljava/io/OutputStream;
    .local v8, "vCalUri":Landroid/net/Uri;
    :catchall_c
    move-exception v9

    .line 65
    .end local v4    # "output":Ljava/io/OutputStream;
    :goto_7
    if-eqz v3, :cond_e

    .line 66
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_f

    .line 72
    :cond_e
    if-eqz v4, :cond_f

    .line 73
    :try_start_f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    .line 78
    :cond_f
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 63
    .local v8, "vCalUri":Landroid/net/Uri;
    :goto_8
    throw v9

    .line 75
    .local v8, "vCalUri":Landroid/net/Uri;
    :catch_e
    move-exception v2

    .line 78
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "vCalUri":Landroid/net/Uri;
    goto :goto_8

    .line 77
    .end local v2    # "e":Ljava/io/IOException;
    .local v8, "vCalUri":Landroid/net/Uri;
    :catchall_d
    move-exception v9

    .line 78
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 77
    .local v8, "vCalUri":Landroid/net/Uri;
    throw v9

    .line 68
    .local v8, "vCalUri":Landroid/net/Uri;
    :catch_f
    move-exception v2

    .line 72
    .restart local v2    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_10

    .line 73
    :try_start_10
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    .line 78
    :cond_10
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "vCalUri":Landroid/net/Uri;
    goto :goto_8

    .line 75
    .local v8, "vCalUri":Landroid/net/Uri;
    :catch_10
    move-exception v2

    .line 78
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "vCalUri":Landroid/net/Uri;
    goto :goto_8

    .line 77
    .local v8, "vCalUri":Landroid/net/Uri;
    :catchall_e
    move-exception v9

    .line 78
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 77
    .local v8, "vCalUri":Landroid/net/Uri;
    throw v9

    .line 70
    .end local v2    # "e":Ljava/io/IOException;
    .local v8, "vCalUri":Landroid/net/Uri;
    :catchall_f
    move-exception v9

    .line 72
    if-eqz v4, :cond_11

    .line 73
    :try_start_11
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_10

    .line 78
    :cond_11
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 70
    .local v8, "vCalUri":Landroid/net/Uri;
    :goto_9
    throw v9

    .line 75
    .local v8, "vCalUri":Landroid/net/Uri;
    :catch_11
    move-exception v2

    .line 78
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "vCalUri":Landroid/net/Uri;
    goto :goto_9

    .line 77
    .end local v2    # "e":Ljava/io/IOException;
    .local v8, "vCalUri":Landroid/net/Uri;
    :catchall_10
    move-exception v9

    .line 78
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 77
    .local v8, "vCalUri":Landroid/net/Uri;
    throw v9

    .line 63
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    .restart local v6    # "vCalFile":Ljava/io/File;
    .local v8, "vCalUri":Landroid/net/Uri;
    :catchall_11
    move-exception v9

    move-object v4, v5

    .end local v5    # "output":Ljava/io/OutputStream;
    .local v4, "output":Ljava/io/OutputStream;
    goto :goto_7

    .line 56
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    :catch_12
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    goto/16 :goto_5

    .line 60
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    :catch_13
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    goto/16 :goto_3
.end method

.method public static getVCalendarCaption(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 95
    :try_start_0
    new-instance v6, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;

    invoke-direct {v6}, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;-><init>()V

    .line 96
    .local v6, "vcal":Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;
    invoke-virtual {v6, p0, p1}, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->parse(Landroid/content/Context;Landroid/net/Uri;)V

    .line 97
    invoke-virtual {v6}, Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;->getvObjectList()Ljava/util/List;

    move-result-object v4

    .line 98
    .local v4, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/util/vcalendar/VObject;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "caption":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 101
    if-lez v2, :cond_0

    .line 102
    const-string/jumbo v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/util/vcalendar/VObject;

    .line 105
    .local v3, "object":Lcom/sonyericsson/conversations/util/vcalendar/VObject;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->getSubject()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "objectString":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 107
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->getSummary()Ljava/lang/String;

    move-result-object v5

    .line 111
    if-eqz v5, :cond_4

    .line 112
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 122
    .end local v0    # "caption":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v3    # "object":Lcom/sonyericsson/conversations/util/vcalendar/VObject;
    .end local v4    # "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/util/vcalendar/VObject;>;"
    .end local v5    # "objectString":Ljava/lang/String;
    .end local v6    # "vcal":Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;
    :catch_0
    move-exception v1

    .line 127
    :cond_3
    const-string/jumbo v7, ""

    return-object v7

    .line 115
    .restart local v0    # "caption":Ljava/lang/StringBuilder;
    .restart local v2    # "i":I
    .restart local v3    # "object":Lcom/sonyericsson/conversations/util/vcalendar/VObject;
    .restart local v4    # "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/util/vcalendar/VObject;>;"
    .restart local v5    # "objectString":Ljava/lang/String;
    .restart local v6    # "vcal":Lcom/sonyericsson/conversations/util/vcalendar/VCalendar;
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/util/vcalendar/VObject;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 116
    if-eqz v5, :cond_1

    .line 117
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 120
    .end local v3    # "object":Lcom/sonyericsson/conversations/util/vcalendar/VObject;
    .end local v5    # "objectString":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    return-object v7
.end method

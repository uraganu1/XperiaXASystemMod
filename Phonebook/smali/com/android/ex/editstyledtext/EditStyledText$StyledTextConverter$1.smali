.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;
.super Ljava/lang/Object;
.source "EditStyledText.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->SetHtml(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;


# direct methods
.method constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    .prologue
    .line 1926
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 1928
    const-string/jumbo v11, "EditStyledText"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "--- sethtml: src="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    const-string/jumbo v11, "content://"

    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1930
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1932
    .local v9, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 1933
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 1934
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1936
    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    invoke-static {v11}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->-get0(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 1937
    .local v6, "is":Ljava/io/InputStream;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1938
    .local v7, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    iput-boolean v11, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1939
    const/4 v11, 0x0

    invoke-static {v6, v11, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1940
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 1941
    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    invoke-static {v11}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->-get0(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 1943
    iget v10, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1944
    .local v10, "width":I
    iget v5, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1945
    .local v5, "height":I
    iget v11, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v12, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    iget-object v12, v12, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v12}, Lcom/android/ex/editstyledtext/EditStyledText;->-wrap3(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v12

    if-le v11, v12, :cond_0

    .line 1946
    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    iget-object v11, v11, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v11}, Lcom/android/ex/editstyledtext/EditStyledText;->-wrap3(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v10

    .line 1947
    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    iget-object v11, v11, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v11}, Lcom/android/ex/editstyledtext/EditStyledText;->-wrap3(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v11

    mul-int/2addr v11, v5

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v5, v11, v12

    .line 1948
    new-instance v8, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v11, v12, v10, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1949
    .local v8, "padding":Landroid/graphics/Rect;
    const/4 v11, 0x0

    invoke-static {v6, v8, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1953
    .end local v8    # "padding":Landroid/graphics/Rect;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 1954
    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    invoke-static {v11}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->-get0(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1953
    invoke-direct {v2, v11, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1955
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v2, v11, v12, v10, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1956
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    .line 1957
    return-object v2

    .line 1951
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :try_start_2
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 1961
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "height":I
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "opt":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "width":I
    :catch_0
    move-exception v4

    .line 1962
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    const-string/jumbo v11, "EditStyledText"

    const-string/jumbo v12, "OutOfMemoryError"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    invoke-static {v11}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->-get0(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Lcom/android/ex/editstyledtext/EditStyledText;->setHint(I)V

    .line 1965
    const/4 v11, 0x0

    return-object v11

    .line 1958
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v3

    .line 1959
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v11, "EditStyledText"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "--- set html: Failed to loaded content "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1960
    const/4 v11, 0x0

    return-object v11

    .line 1968
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v11, 0x0

    return-object v11

    .line 1958
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "height":I
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "opt":Landroid/graphics/BitmapFactory$Options;
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v10    # "width":I
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 1961
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/lang/OutOfMemoryError;
    move-object v1, v2

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

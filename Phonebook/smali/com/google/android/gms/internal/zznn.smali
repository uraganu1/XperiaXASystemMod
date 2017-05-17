.class public final Lcom/google/android/gms/internal/zznn;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public static zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    return-void

    :cond_1
    iput v2, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    array-length v0, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {p0, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

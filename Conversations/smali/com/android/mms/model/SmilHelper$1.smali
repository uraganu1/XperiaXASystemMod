.class final Lcom/android/mms/model/SmilHelper$1;
.super Ljava/util/HashMap;
.source "SmilHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/model/SmilHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 79
    const-string/jumbo v0, "&"

    const-string/jumbo v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/model/SmilHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v0, "<"

    const-string/jumbo v1, "&lt;"

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/model/SmilHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v0, ">"

    const-string/jumbo v1, "&gt;"

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/model/SmilHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v0, "\""

    const-string/jumbo v1, "&quot;"

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/model/SmilHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v0, "\'"

    const-string/jumbo v1, "&apos;"

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/model/SmilHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.class Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$RcsCapabilityAsyncHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RcsCapabilityAsyncHandler"
.end annotation


# instance fields
.field private final mContactDataMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p2, "contactDataMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 138
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$RcsCapabilityAsyncHandler;->mContactDataMap:Landroid/util/SparseArray;

    .line 136
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 143
    if-eqz p3, :cond_2

    .line 145
    :goto_0
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->-get0()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 146
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 149
    .local v0, "contactId":I
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->-get0()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 148
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 150
    .local v2, "rcsRegistrationState":I
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$RcsCapabilityAsyncHandler;->mContactDataMap:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    .end local v0    # "contactId":I
    .end local v2    # "rcsRegistrationState":I
    :catchall_0
    move-exception v3

    .line 153
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 152
    throw v3

    .line 153
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 156
    if-eqz p2, :cond_1

    move-object v1, p2

    .line 157
    check-cast v1, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;

    .line 158
    .local v1, "queryListener":Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;
    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;->onQueryComplete()V

    .line 142
    .end local v1    # "queryListener":Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;
    :cond_1
    :goto_1
    return-void

    .line 162
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->-get1()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Asynchronous query is completed with null cursor!"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

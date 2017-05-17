.class Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1$1;
.super Ljava/lang/Object;
.source "GroupMessageHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader$ExtensionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1$1;->this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSelection(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "selection"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x0

    .line 124
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    .line 125
    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    aput-object v3, v0, v2

    const-string/jumbo v3, "vnd.android.cursor.item/email_v2"

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 128
    .local v0, "MIMETYPES":[Ljava/lang/String;
    const-string/jumbo v3, "mimetype"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v3, " IN ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 131
    .local v1, "mimetype":Ljava/lang/String;
    const-string/jumbo v4, "\'"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v4, "\'"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string/jumbo v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "mimetype":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    return-void
.end method

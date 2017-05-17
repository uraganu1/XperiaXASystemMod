.class Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;
.super Landroid/os/AsyncTask;
.source "LocationAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->-get0(Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;)Lcom/google/android/gms/location/places/Place;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/location/places/Place;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 177
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->getLocationPicFromLatLng(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 175
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;

    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->-wrap0(Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;Landroid/net/Uri;)V

    .line 185
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/Object;

    .prologue
    .line 185
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "uri":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

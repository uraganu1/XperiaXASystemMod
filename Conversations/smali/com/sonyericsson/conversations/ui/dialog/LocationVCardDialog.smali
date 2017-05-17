.class public Lcom/sonyericsson/conversations/ui/dialog/LocationVCardDialog;
.super Landroid/app/AlertDialog;
.source "LocationVCardDialog.java"


# direct methods
.method public static showLocationDialog(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locationUri"    # Landroid/net/Uri;

    .prologue
    .line 47
    new-instance v0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, "locationAdapter":Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;->addAllMenuItems()V

    .line 49
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .local v1, "locationDialog":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0b0193

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 51
    new-instance v2, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;-><init>(Landroid/content/Context;)V

    .line 52
    .local v2, "locationDialogListener":Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;
    invoke-virtual {v2, p1}, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->setLocationUri(Landroid/net/Uri;)V

    .line 53
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 46
    return-void
.end method

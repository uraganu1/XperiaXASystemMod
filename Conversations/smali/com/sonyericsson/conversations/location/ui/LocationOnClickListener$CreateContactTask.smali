.class Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener$CreateContactTask;
.super Landroid/os/AsyncTask;
.source "LocationOnClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateContactTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener$CreateContactTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener$CreateContactTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener$CreateContactTask;-><init>(Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 88
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener$CreateContactTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 28
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 90
    :try_start_0
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v15, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v15, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "vnd.android.cursor.item/contact"

    invoke-virtual {v15, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v10, "contentValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v21, "values":Landroid/content/ContentValues;
    const-string/jumbo v8, "mimetype"

    const-string/jumbo v23, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v8, "data2"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string/jumbo v20, ""

    .line 99
    .local v20, "streetAddress":Ljava/lang/String;
    const-string/jumbo v9, ""

    .line 100
    .local v9, "city":Ljava/lang/String;
    const-string/jumbo v19, ""

    .line 101
    .local v19, "state":Ljava/lang/String;
    const-string/jumbo v22, ""

    .line 102
    .local v22, "zipCode":Ljava/lang/String;
    const-string/jumbo v11, ""

    .line 104
    .local v11, "country":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener$CreateContactTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;

    invoke-static {v8}, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->-get0(Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;)Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener$CreateContactTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->-get1(Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lcom/sonyericsson/conversations/util/VCardUtil;->getAllVCardContactDetails(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/vcard/VCardEntry;

    move-result-object v13

    .line 105
    .local v13, "entry":Lcom/android/vcard/VCardEntry;
    if-eqz v13, :cond_0

    .line 106
    invoke-virtual {v13}, Lcom/android/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v17

    .line 107
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PostalData;>;"
    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 108
    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/vcard/VCardEntry$PostalData;

    .line 109
    .local v18, "postalData":Lcom/android/vcard/VCardEntry$PostalData;
    invoke-virtual/range {v18 .. v18}, Lcom/android/vcard/VCardEntry$PostalData;->getStreet()Ljava/lang/String;

    move-result-object v20

    .line 110
    invoke-virtual/range {v18 .. v18}, Lcom/android/vcard/VCardEntry$PostalData;->getLocalty()Ljava/lang/String;

    move-result-object v9

    .line 111
    invoke-virtual/range {v18 .. v18}, Lcom/android/vcard/VCardEntry$PostalData;->getRegion()Ljava/lang/String;

    move-result-object v19

    .line 112
    invoke-virtual/range {v18 .. v18}, Lcom/android/vcard/VCardEntry$PostalData;->getPostalCode()Ljava/lang/String;

    move-result-object v22

    .line 113
    invoke-virtual/range {v18 .. v18}, Lcom/android/vcard/VCardEntry$PostalData;->getCountry()Ljava/lang/String;

    move-result-object v11

    .line 116
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PostalData;>;"
    .end local v18    # "postalData":Lcom/android/vcard/VCardEntry$PostalData;
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener$CreateContactTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;

    invoke-static {v8}, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->-get0(Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;)Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener$CreateContactTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->-get1(Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lcom/sonyericsson/conversations/util/VCardUtil;->getGeoPoint(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/maps/GeoPoint;

    move-result-object v14

    .line 117
    .local v14, "geoPoint":Lcom/google/android/maps/GeoPoint;
    const/16 v16, 0x0

    .line 118
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v14, :cond_1

    .line 119
    invoke-virtual {v14}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v8

    int-to-double v0, v8

    move-wide/from16 v24, v0

    const-wide v26, 0x412e848000000000L    # 1000000.0

    div-double v4, v24, v26

    .line 120
    .local v4, "latitude":D
    invoke-virtual {v14}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v8

    int-to-double v0, v8

    move-wide/from16 v24, v0

    const-wide v26, 0x412e848000000000L    # 1000000.0

    div-double v6, v24, v26

    .line 121
    .local v6, "longitude":D
    new-instance v3, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener$CreateContactTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;

    invoke-static {v8}, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->-get0(Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 122
    .local v3, "geocoder":Landroid/location/Geocoder;
    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v16

    .line 125
    .end local v3    # "geocoder":Landroid/location/Geocoder;
    .end local v4    # "latitude":D
    .end local v6    # "longitude":D
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_1
    if-eqz v16, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 126
    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    .line 127
    .local v2, "addressObj":Landroid/location/Address;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 128
    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v9

    .line 130
    :cond_2
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 131
    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v19

    .line 133
    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 134
    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v11

    .line 136
    :cond_4
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 137
    invoke-virtual {v2}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v22

    .line 139
    :cond_5
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 140
    invoke-virtual {v2}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v20

    .line 144
    .end local v2    # "addressObj":Landroid/location/Address;
    :cond_6
    const-string/jumbo v8, "data4"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v8, "data7"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v8, "data8"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v8, "data9"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v8, "data10"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    const-string/jumbo v8, "data"

    invoke-virtual {v15, v8, v10}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 152
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener$CreateContactTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;

    invoke-static {v8}, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->-get0(Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v9    # "city":Ljava/lang/String;
    .end local v10    # "contentValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v11    # "country":Ljava/lang/String;
    .end local v13    # "entry":Lcom/android/vcard/VCardEntry;
    .end local v14    # "geoPoint":Lcom/google/android/maps/GeoPoint;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v19    # "state":Ljava/lang/String;
    .end local v20    # "streetAddress":Ljava/lang/String;
    .end local v21    # "values":Landroid/content/ContentValues;
    .end local v22    # "zipCode":Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    return-object v8

    .line 154
    :catch_0
    move-exception v12

    .line 155
    .local v12, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener$CreateContactTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;

    invoke-static {v8}, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->-get0(Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;)Landroid/content/Context;

    move-result-object v8

    .line 156
    const v23, 0x7f0b00e5

    const/16 v24, 0x1

    .line 155
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v8, v0, v1}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0
.end method

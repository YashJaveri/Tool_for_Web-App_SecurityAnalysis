.class public Lcom/github/mikephil/charting/data/realm/implementation/RealmLineData;
.super Lcom/github/mikephil/charting/data/LineData;
.source "RealmLineData.java"


# direct methods
.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "+",
            "Lio/realm/RealmObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-static {p1, p2}, Lcom/github/mikephil/charting/data/realm/base/RealmUtils;->toXVals(Lio/realm/RealmResults;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.class public LV/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LV/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LV/g<",
        "TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LB/a;Z)LV/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB/a;",
            "Z)",
            "LV/f<",
            "TR;>;"
        }
    .end annotation

    sget-object p1, LV/e;->a:LV/e;

    return-object p1
.end method

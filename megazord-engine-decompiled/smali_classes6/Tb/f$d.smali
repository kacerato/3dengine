.class public LTb/f$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LTb/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:LTb/f$c;


# direct methods
.method public constructor <init>(LTb/f$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executor"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LTb/f$d;->a:LTb/f$c;

    return-void
.end method

.method public static synthetic a(LTb/f$d;)LTb/f$c;
    .locals 0

    iget-object p0, p0, LTb/f$d;->a:LTb/f$c;

    return-object p0
.end method

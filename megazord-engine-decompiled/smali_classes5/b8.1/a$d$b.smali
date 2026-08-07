.class public Lb8/a$d$b;
.super Lb8/a$d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb8/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic d:Lb8/a$d;


# direct methods
.method public constructor <init>(Lb8/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lb8/a$d$b;->d:Lb8/a$d;

    invoke-direct {p0, p1}, Lb8/a$d$a;-><init>(Lb8/a$d;)V

    return-void
.end method

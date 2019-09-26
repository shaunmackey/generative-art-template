//----------------------------------------
//-------INIT
//----------------------------------------
import processing.pdf.*;
HDrawablePool pool0, pool, pool1, pool2, pool3, pool4, pool5, pool6, pool7;
HColorPool colors0, colors1, colors2, colors3, colors4, colors5, colors6, colors7;
void setup(){
	size(1555,884);
	H.init(this).background(#999999);
	smooth();
////-----------AMOUNT OF ASSETS FOR EACH MAP
int[] dNum = {100,100,100,100,100,100,100,100,100,100,0,0,0,0,0,0,0 };  // Alternate syntax

////-----------COLOR POOL FOR EACH MAP
colors0 = new HColorPool(#D33331);
colors1 = new HColorPool(#D33331);
colors2 = new HColorPool(#003E86, #004A91, #004888, #08306B, #005592, #025487, #016093, #016697, #074573, #006C99, #135B8F, #116E99, #175583, #174C79, #1A6192, #196A97, #216D98, #27739A, #265781, #2A608E, #306D95, #39759A, #37658C, #3F6F95, #3A5B82, #46799B, #446789, #4B7294, #4F7D9B, #59809B, #577795, #536D89, #103D92, #12469E, #12509C, #12589F, #125FA1, #1264A4, #1268A6, #126CA6, #1969A6, #1C63A3,#005CBF, #0060C2, #0069D4, #006AC9, #0072CC, #007ACF, #0084D0, #008CD4, #0090D7, #008FD2, #0094D8, #0098DA, #009CDB, #009FDD, #00A1DC, #0897D8, #0F96DA, #1094D5, #0F9DDB, #0EA2DC, #1A9CDA, #249AD9, #27A3DC, #329BD8, #38A2DB, #39A7DE, #46A7DD, #479ED8, #51ABDF, #58A6DC, #5CB0DF, #63ACDF, #64B3DF, #65A8DB, #6CB5E0, #70B0DF, #74ADDC, #76B4DF, #79B9E1, #84BBE1, #8FBFE1, #9CC6EC, #98C1E0, #A4C4E0, #B0C7E1, #B6CDE7, #B9CDE7, #B8C9E1, #BCCBE1, #C2CDE0, #C9D3E3, #C9CDDE, #D1D0DE, #DCDAE2, #DEDEE5, #DFDDE3, #E2DFE4);
colors3 = new HColorPool(#FA7538, #FA8841, #FA8636, #FB8D2F, #FA9736, #FC9828, #FBA532, #FBA629, #FB9E13, #FAA819, #FDB029, #FBA904, #FBB20D, #FDB819, #FCB400, #FEBF16, #FEBC09, #FCBC00, #FDC400, #FEC900, #FAC900, #FECD00, #F7CA00, #FDD000, #F9CD00, #FBD100, #FED500, #FED800, #FAD600, #FBD900, #FEDD00, #FBDC00, #FDE100, #FBE000, #FFE400, #FDE400, #FFE600, #FFE700, #FDE600, #FFE800, #FEE900, #FFEA00, #FCE800, #FFEC00, #F9E700, #FAE900, #FCEB00, #FFEE00, #FCEC00, #FFF216, #FBED00, #FCEE00, #FEF000, #FFF200, #FFF427, #FCF000, #FFF300, #FCF200, #FEF400, #F9F100, #F6EF00, #F7F100, #FAF400, #FDF700);
colors4 = new HColorPool(#103D92, #12469E, #12509C, #12589F, #125FA1, #1264A4, #1268A6, #126CA6, #1969A6, #1C63A3,#011774, #001D84, #02238B, #022995, #012F9F, #07309A, #0836A4, #0D3DAD, #102D93, #1136A9, #1235A0, #122985, #133CAA, #1339A4, #153DB0, #163499, #1A36A0, #1B3DAB, #1B3BA3, #1B42AE, #1B318D, #2342AE, #233CA4, #2241A5, #2347AF, #6F286E, #784076, #63155F, #692360, #8E5082, #7A306B, #A96C9B, #721759, #C388B0, #DCA2C5, #881B54, #9B204E, #AB2748, #B92E42, #C4343E, #CC3A3B, #D5413A, #FA7538, #FA8841, #FA8636, #FB8D2F, #FA9736, #FC9828, #FBA532, #FBA629, #FB9E13, #FAA819, #FDB029, #FBA904, #FBB20D, #FDB819, #FCB400, #FEBF16, #FEBC09, #FCBC00, #FDC400, #FEC900, #FAC900, #FECD00, #F7CA00, #FDD000, #F9CD00, #FBD100, #FED500, #FED800, #FAD600, #FBD900, #FEDD00, #FBDC00, #FDE100, #FBE000, #FFE400, #FDE400, #FFE600, #FFE700, #FDE600, #FFE800, #FEE900, #FFEA00, #FCE800, #FFEC00, #F9E700, #FAE900, #FCEB00);
colors5 = new HColorPool(#000000, #333333, #111111, #444444);
colors6 = new HColorPool(#005FAA, #0068A9, #0172AE, #007CB3, #0985B5, #156BA4, #156096, #167FB2, #1B73AC, #225990, #247FB1, #2587B5, #2C689C, #2F74AA, #3588B4, #3680B0, #378FB5, #E2E2E2, #DFDFDF, #F0ECE5, #E8E6E2, #EBE9E4, #E3E2DF, #7EADD5, #84AED5, #8CB2D6, #90B0D5, #92B6D8, #92B3D5, #95B9D9, #96B8D6, #9AB7D8, #98B7D5, #9CBAD9, #9EBEDC, #9CB9D5, #A0B9D5, #A3BED9, #A2BCD5, #A8BFD8, #A8BED5, #ACC1D9, #AFC0D8, #B1C2D8, #B3C4DA, #B5C7DC, #B9CBDE, #B9C9DD, #B5C7D8, #BCCCE0, #B8C6DA, #B8C4D8, #BAC8DA, #BACBDA, #C0CDE0, #BFCFDF, #BDCADC, #BECCDD, #BBC9D7, #BEC9D9, #BFCCDA, #C6D3E1, #C3CDDB, #C5CFDC, #C9D3DD, #C8CFDB, #CAD1DD, #CDD4DE, #CCD1DB, #CDD2DC, #D1D6DF, #D0D8DE, #CED4DB, #D1D5DD, #D5D9E0, #D5D8DD, #D9DBDF, #DDE0E2, #DCDDE0, #E7E7E3, #DFDFE1);
colors7 = new HColorPool(#103D92, #12469E, #12509C, #12589F, #125FA1, #1264A4, #1268A6, #126CA6, #1969A6, #1C63A3,#011774, #001D84, #02238B, #022995, #012F9F, #07309A, #0836A4, #0D3DAD, #102D93, #1136A9, #1235A0, #122985, #133CAA, #1339A4, #153DB0, #163499, #1A36A0, #1B3DAB, #1B3BA3, #1B42AE, #1B318D, #2342AE, #233CA4, #2241A5, #2347AF, #6F286E, #784076, #63155F, #692360, #8E5082, #7A306B, #A96C9B, #721759, #C388B0, #DCA2C5, #881B54, #9B204E, #AB2748, #B92E42, #C4343E, #CC3A3B, #D5413A, #FA7538, #FA8841, #FA8636, #FB8D2F, #FA9736, #FC9828, #FBA532, #FBA629, #FB9E13, #FAA819, #FDB029, #FBA904, #FBB20D, #FDB819, #FCB400, #FEBF16, #FEBC09, #FCBC00, #FDC400, #FEC900, #FAC900, #FECD00, #F7CA00, #FDD000, #F9CD00, #FBD100, #FED500, #FED800, #FAD600, #FBD900, #FEDD00, #FBDC00, #FDE100, #FBE000, #FFE400, #FDE400, #FFE600, #FFE700, #FDE600, #FFE800, #FEE900, #FFEA00, #FCE800, #FFEC00, #F9E700, #FAE900, #FCEB00);


//----------------------------------------
//-------BUILD 0 COLOR POOL
//----------------------------------------
  pool0 = new HDrawablePool(dNum[0]);
  pool0.autoAddToStage()
    .add(new HShape("svg0.svg"))

    .layout(
      new HShapeLayout()
      .target(
        new HImage("shapeMap0.png")
      )
    )

    .onCreate(
      new HCallback() {
        public void run(Object obj) {
          HShape d = (HShape) obj;
          d
            .enableStyle(false)
            .strokeJoin(ROUND)
            .strokeCap(ROUND)
            .strokeWeight(0)
            .stroke(#333333)  
            .anchorAt(H.CENTER)
            .size( (int)random(2,34) )
         // .size( 50 + ( (int)random(3) * 50) ) // 50, 100, 150, 200
            .rotate( 3 + ( (int)random(4) * 1) )
          
          ;
          d.randomColors(colors0.fillOnly());
        }
      }
    )
    .requestAll()
  ;

//----------------------------------------
//-------BUILD 1 COLOR POOL
//----------------------------------------
	  pool1 = new HDrawablePool(dNum[1]);
    pool1.autoAddToStage()
    .add(new HShape("svg1.svg"))

		.layout(
			new HShapeLayout()
			.target(
				new HImage("shapeMap1.png")
			)
		)

		.onCreate(
			new HCallback() {
				public void run(Object obj) {
					HShape d = (HShape) obj;
					d
						.enableStyle(false)
            .strokeJoin(ROUND)
            .strokeCap(ROUND)
            .strokeWeight(0)
            .stroke(#333333)  
            .anchorAt(H.CENTER)
						.size( (int)random(2,34) )
					  .size( 50 + ( (int)random(3) * 50) ) // 50, 100, 150, 200
            .rotate( 3 + ( (int)random(4) * 1) )
          
					;
					d.randomColors(colors1.fillOnly());
				}
			}
		)
		.requestAll()
	;
////----------------------------------------
////-------BUILD SECOND COLOR POOL
////----------------------------------------
  pool2 = new HDrawablePool(dNum[2]);
  pool2.autoAddToStage()
    .add(new HShape("svg2.svg"),6)
    .add(new HShape("svg2.svg"))
    .add(new HShape("svg2.svg"))
    .add(new HShape("svg2.svg"))
   
    .layout(
      new HShapeLayout()
      .target(
        new HImage("shapeMap2.png")
      )
    )

    .onCreate(
      new HCallback() {
        public void run(Object obj) {
          HShape d = (HShape) obj;
          d
            .enableStyle(false)
            .strokeJoin(ROUND)
            .strokeCap(ROUND)
            .strokeWeight(0)
            .stroke(#000000)  
            .anchorAt(H.CENTER)
            .size( (int)random(10,40) )
           // .size( 50 + ( (int)random(3) * 50) ) // 50, 100, 150, 200
            //.rotate( (int)random(360) )
          ;
          d.randomColors(colors2.fillOnly());
        }
      }
    )
    .requestAll()
  ;
  //END COLOR POOL----------------------------------------
  
//  //----------------------------------------
////-------BUILD THIRD COLOR POOL
////TODO: SEE IF WE CAN SAVE THESE AS AN EXTERNAL FUNCTION THAT WE PASS THE COLORS< AMOUNT SVG MAP ETC AS ARGS
////----------------------------------------
  pool3 = new HDrawablePool(dNum[3]);
  pool3.autoAddToStage()
    .add(new HShape("svg3.svg"))

    .layout(
      new HShapeLayout()
      .target(
        new HImage("shapeMap3.png")
      )
    )

    .onCreate(
      new HCallback() {
        public void run(Object obj) {
          HShape d = (HShape) obj;
          d
            .enableStyle(false)
            .strokeJoin(ROUND)
            .strokeCap(ROUND)
            .strokeWeight(.2)
            .stroke(#444444)  
            .anchorAt(H.CENTER)
            .size( (int)random(10,40) )
            //.rotate( (int)random(360) )
          ;
          d.randomColors(colors3.fillOnly());
        }
      }
    )
    .requestAll()
  ;
  //END COLOR POOL----------------------------------------
  
  //----------------------------------------
//-------BUILD FOURTH COLOR POOL
//----------------------------------------
  pool4 = new HDrawablePool(dNum[4]);
  pool4.autoAddToStage()
    .add(new HShape("svg4.svg"))

    .layout(
      new HShapeLayout()
      .target(
        new HImage("shapeMap4.png")
      )
    )

    .onCreate(
      new HCallback() {
        public void run(Object obj) {
          HShape d = (HShape) obj;
          d
            .enableStyle(false)
            .strokeJoin(ROUND)
            .strokeCap(ROUND)
            .strokeWeight(0)
            .stroke(#000000)            
            .anchorAt(H.CENTER)
            .size( (int)random(10,40) )
            .rotate( 3 + ( (int)random(4) * 1) )
          ;
          d.randomColors(colors4.fillOnly());
        }
      }
    )
    .requestAll()
  ;
  //END COLOR POOL----------------------------------------
  


    //----------------------------------------
//-------BUILD 5th COLOR POOL
//----------------------------------------
  pool5 = new HDrawablePool(dNum[5]);
  pool5.autoAddToStage()
    .add(new HShape("svg5.svg"))

    
  

    .layout(
      new HShapeLayout()
      .target(
        new HImage("shapeMap5.png")
      )
    )

    .onCreate(
      new HCallback() {
        public void run(Object obj) {
          HShape d = (HShape) obj;
          d
            .enableStyle(false)
            .strokeJoin(ROUND)
            .strokeCap(ROUND)
            .strokeWeight(0)
            .stroke(#000000)            
            .anchorAt(H.CENTER)
            .size( (int)random(4,6) )
            .rotate( (int)random(3) )
          ;
          d.randomColors(colors5.fillOnly());
        }
      }
    )
    .requestAll()
  ;




  //----------------------------------------
//-------BUILD 6th COLOR POOL
//----------------------------------------
  pool6 = new HDrawablePool(dNum[6]);
  pool6.autoAddToStage()
    .add(new HShape("svg6.svg"))


    .layout(
      new HShapeLayout()
      .target(
        new HImage("shapeMap6.png")
      )
    )

    .onCreate(
      new HCallback() {
        public void run(Object obj) {
          HShape d = (HShape) obj;
          d
            .enableStyle(false)
            .strokeJoin(ROUND)
            .strokeCap(ROUND)
            .strokeWeight(0)
            .stroke(#000000)  
            .anchorAt(H.CENTER)
            .size( (int)random(10,40) )
            .rotate( (int)random(5) )
          ;

          d.randomColors(colors6.fillOnly());
        }
      }
    )
    .requestAll()
  ;
  //END COLOR POOL----------------------------------------
  
  
    //----------------------------------------
//-------BUILD 7th COLOR POOL
//----------------------------------------
  pool7 = new HDrawablePool(dNum[7]);
  pool7.autoAddToStage()
    .add(new HShape("svg7.svg"),6)
  

    .layout(
      new HShapeLayout()
      .target(
        new HImage("shapeMap7.png")
      )
    )

    .onCreate(
      new HCallback() {
        public void run(Object obj) {
          HShape d = (HShape) obj;
          d
            .enableStyle(false)
            .strokeJoin(ROUND)
            .strokeCap(ROUND)
            .strokeWeight(0)
            .stroke(#000000)            
            .anchorAt(H.CENTER)
            .size( (int)random(4,8) )
            //.rotate( (int)random(360) )
          ;
          d.randomColors(colors7.fillOnly());
        }
      }
    )
    .requestAll()
  ;


  saveVector();
  noLoop();
}

void draw() {
  H.drawStage();
}

void saveVector() {
  PGraphics tmp = null;
  tmp = beginRecord(PDF, "render.pdf");

  if (tmp == null) {
    H.drawStage();
  } else {
    H.stage().paintAll(tmp, false, 1); // PGraphics, uses3D, alpha
  }

  endRecord();
}
 